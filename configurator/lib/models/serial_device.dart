import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';

import 'package:configurator/globals.dart';
import 'package:configurator/models/each_key_config.dart';
import 'package:configurator/models/error_serial_device.dart';
import 'package:configurator/models/key_config.dart';
import 'package:configurator/models/keycode.dart';
import 'package:configurator/models/serial_communication_result.dart';
import 'package:configurator/utilities/keycode_utils.dart';
import 'package:configurator/utilities/selected_device_state.dart';
import 'package:configurator/utilities/serial_device_utils.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:configurator/build_config.dart';
import 'package:configurator/models/serial_descriptor.dart';
import 'package:configurator/models/magic.dart' as magic;
import 'package:configurator/utilities/libserialport_utils.dart';
import 'package:configurator/utilities/uint8list_extension.dart';

class SerialDevice {
  bool openedByThis = false;
  late SerialDescriptor? serialDescriptor;
  late SerialPort? serialPort;
  late SerialPortConfig serialPortConfig;
  late SerialPortReader? serialPortReader;
  late StreamSubscription streamSubscription;
  late StreamController<Uint8List>? streamController;

  void _initSerialPortConfig() {
    serialPortConfig = SerialPortConfig()
      ..baudRate = BuildConfig.serialBaudRate
      ..bits = BuildConfig.serialBits
      ..stopBits = BuildConfig.serialStopBits
      ..parity = BuildConfig.serialParity ?? SerialPortParity.none
      ..setFlowControl(
          BuildConfig.serialFlowControl ?? SerialPortFlowControl.none);
  }

  void _renewSerialPortAndDescriptor(String port) {
    if (!LibserialportUtils.isValid(port)) return;

    // SerialPort
    serialPort ??= SerialPort(port);
    // SerialDescriptor
    serialDescriptor = SerialDescriptor(port, '${serialPort?.description}');
  }

  void _initWithNull() {
    serialPort = null;
    serialPortReader = null;
    streamController = null;
  }

  void _initSerialPortAndDescriptor(String port) =>
      _renewSerialPortAndDescriptor(port);
  void _initSerialDescriptor(String port) {
    if (serialDescriptor != null) {
      return;
    }
    _renewSerialPortAndDescriptor(port);
  }

  void _initSerialPort(String port) {
    if (serialPort != null) {
      return;
    }
    _renewSerialPortAndDescriptor(port);
  }

  SerialDevice(String port) {
    _initWithNull();
    _initSerialPortAndDescriptor(port);
    _initSerialPortConfig();
  }
  SerialDevice.fromDescriptor(SerialDescriptor descriptor) {
    _initWithNull();
    serialDescriptor = descriptor;
    _initSerialPort(serialDescriptor!.port);
    _initSerialPortConfig();
  }

  void beginCommunication() {
    if (serialPort == null) {
      throw Exception('Serial port is null');
    }
    if (serialPort!.isOpen) {
      if (openedByThis) {
        print('opened by this.');
        closeCommunication();
      } else {
        throw SerialPortIsAlreadyUsed(
            'Serial port is already open by another process');
      }
    } else {
      if (!serialPort!.openReadWrite()) {
        throw SerialPortCannotOpen('Failed to open port ${serialPort!.name}');
      }
      openedByThis = true;
    }
    serialPortReader = SerialPortReader(serialPort!);
    streamController = StreamController<Uint8List>();

    if (streamController == null) {
      throw StreamControllerNotInstantiatedWell(
          'Failed to instantiate StreamController');
    }

    streamSubscription = serialPortReader!.stream.listen((data) {
      streamController?.add(data);
    }, onDone: () {
      streamController?.close();
    });
  }

  void closeCommunication() {
    if (serialPort == null) return;

    if (serialPort!.isOpen) {
      if (!serialPort!.close()) {
        throw SerialPortCannotOpen('Failed to close port ${serialPort!.name}');
      }
    }

    streamSubscription.cancel();
    serialPortReader?.close();
    serialPortReader = null;
    streamController?.close();
    streamController = null;
    openedByThis = false;
  }

  Future<SerialHandshakeResult> requestHandshake({
    String requestedSerialDevicePort = '',
    int retryLimit = BuildConfig.serialHandshakeRetryLimit,
  }) async {
    if (serialPort == null) {
      throw SerialPortNotInstantiatedWell(
          typicalSerialPortNotInstantiatedWellMessage);
    }
    beginCommunication();

    serialPort!.write(magic.handshakeRequest);

    try {
      Uint8List value = await streamController!.stream.first.timeout(
        const Duration(seconds: BuildConfig.serialHandshakeTimeout),
      );
      closeCommunication();
      return await onHandshakeResponse(
        value,
        retryLimit,
        requestedSerialDevicePort: requestedSerialDevicePort,
      );
    } catch (error) {
      closeCommunication();
      if (error is TimeoutException) {
        if (retryLimit > 0) {
          return await requestHandshake(
            requestedSerialDevicePort: requestedSerialDevicePort,
            retryLimit: retryLimit - 1,
          );
        } else {
          return SerialHandshakeResult(
              requestedSerialDevicePort, SerialDeviceState.invalid);
          // throw SerialPortCommunicationDoneIncompleted(typicalSerialPortCommunicationDoneIncompletedMessage);
        }
      } else {
        rethrow;
      }
    }
  }

  Future<SerialHandshakeResult> onHandshakeResponse(
      Uint8List response, int retryLimit,
      {String requestedSerialDevicePort = ''}) async {
    if (!response.equals(magic.handshakeResponse)) {
      if (retryLimit > 0) {
        return await requestHandshake(
          requestedSerialDevicePort: requestedSerialDevicePort,
          retryLimit: retryLimit - 1,
        );
      } else {
        return SerialHandshakeResult(
            requestedSerialDevicePort, SerialDeviceState.invalid);
      }
    }

    return SerialHandshakeResult(
        requestedSerialDevicePort, SerialDeviceState.valid);
  }

  Future<SerialLoadSavedKeyConfigurationResult>
      requestLoadSavedKeyConfiguration({
    String requestedSerialDevicePort = '',
    int retryLimit = BuildConfig.serialDefaultRetryLimit,
  }) async {
    if (serialPort == null) {
      throw SerialPortNotInstantiatedWell(
          typicalSerialPortCommunicationDoneIncompletedMessage);
    }
    beginCommunication();

    serialPort!.write(magic.loadKeyConfigurationRequest);

    try {
      Uint8List value = await streamController!.stream.first.timeout(
        const Duration(seconds: BuildConfig.serialDefaultTimeout),
      );
      closeCommunication();
      return await onLoadSavedKeyConfigurationResponse(
        value,
        retryLimit,
        requestedSerialDevicePort: requestedSerialDevicePort,
      );
    } catch (error) {
      closeCommunication();
      if (error is TimeoutException) {
        if (retryLimit > 0) {
          return await requestLoadSavedKeyConfiguration(
            requestedSerialDevicePort: requestedSerialDevicePort,
            retryLimit: retryLimit - 1,
          );
        } else {
          return SerialLoadSavedKeyConfigurationResult(
              requestedSerialDevicePort, null);
        }
      } else {
        rethrow;
      }
    }
  }

  Future<SerialLoadSavedKeyConfigurationResult>
      onLoadSavedKeyConfigurationResponse(Uint8List response, int retryLimit,
          {String requestedSerialDevicePort = ''}) async {
    onFailed() async {
      if (retryLimit > 0) {
        return await requestLoadSavedKeyConfiguration(
          requestedSerialDevicePort: requestedSerialDevicePort,
          retryLimit: retryLimit - 1,
        );
      } else {
        return SerialLoadSavedKeyConfigurationResult(
            requestedSerialDevicePort, null);
      }
    }

    if (!SerialDeviceUtils.parseResponseHead(response)
        .equals(magic.loadKeyConfigurationResponse)) {
      return onFailed();
    }

    Uint8List responseBody = SerialDeviceUtils.parseResponseBody(response);
    if (responseBody.length != keyConfigArrayLength) {
      onFailed();
    }
    return SerialLoadSavedKeyConfigurationResult(requestedSerialDevicePort,
        KeyConfig.fromUint8List(SerialDeviceUtils.parseResponseBody(response)));
  }

  Future<SerialLoadSavedKeyConfigurationResult> requestSaveKeyConfiguration({
    String requestedSerialDevicePort = '',
    int retryLimit = BuildConfig.serialDefaultRetryLimit,
  }) async {
    if (serialPort == null) {
      throw SerialPortNotInstantiatedWell(
          typicalSerialPortCommunicationDoneIncompletedMessage);
    }
    beginCommunication();

    serialPort!.write(magic.setKeyConfigurationRequest);
    serialPort!.write(Uint8List.fromList(
        Globals.instance.keyConfig.toListKeyCode().map((each) {
      return KeycodeUtils.toArduinoKeycode(each);
    }).toList()));

    try {
      Uint8List value = await streamController!.stream.first.timeout(
        const Duration(seconds: BuildConfig.serialDefaultTimeout),
      );
      closeCommunication();
      print(value);
      return await onSaveKeyConfigurationResponse(
        value,
        retryLimit,
        requestedSerialDevicePort: requestedSerialDevicePort,
      );
    } catch (error) {
      closeCommunication();
      if (error is TimeoutException) {
        if (retryLimit > 0) {
          return await requestLoadSavedKeyConfiguration(
            requestedSerialDevicePort: requestedSerialDevicePort,
            retryLimit: retryLimit - 1,
          );
        } else {
          return SerialLoadSavedKeyConfigurationResult(
              requestedSerialDevicePort, null);
        }
      } else {
        rethrow;
      }
    }
  }

  Future<SerialLoadSavedKeyConfigurationResult> onSaveKeyConfigurationResponse(
      Uint8List response, int retryLimit,
      {String requestedSerialDevicePort = ''}) async {
    onFailed({Exception? error}) async {
      if (retryLimit > 0) {
        return await requestSaveKeyConfiguration(
          requestedSerialDevicePort: requestedSerialDevicePort,
          retryLimit: retryLimit - 1,
        );
      } else {
        if (error != null) throw error;
        return SerialLoadSavedKeyConfigurationResult(
            requestedSerialDevicePort, null);
      }
    }

    Uint8List responseHead = SerialDeviceUtils.parseResponseHead(response);
    if (responseHead.equals(magic.setKeyConfigurationRequestIncomplete)) {
      log('Response from device throws configuration array sent incompletely.',
          time: DateTime.now());
      return onFailed(
          error: SerialPortCommunicationIncompletelyDoneThrownFromDevice(
              typicalSerialPortCommunicationIncompletelyDoneThrownFromDeviceMessage));
    }
    if (!responseHead.equals(magic.setKeyConfigurationResponse)) {
      return onFailed(
          error: SerialPortCommunicationResponseIsOutOfScenario(
              typicalSerialPortCommunicationResponseIsOutOfScenarioMessage));
    }

    Uint8List responseBody = SerialDeviceUtils.parseResponseBody(response);
    if (responseBody.length != keyConfigArrayLength) {
      onFailed();
    }
    return SerialLoadSavedKeyConfigurationResult(requestedSerialDevicePort,
        KeyConfig.fromUint8List(SerialDeviceUtils.parseResponseBody(response)));
  }

  /*
  Future requestLoadKeyConfiguration(
      {int retryLimit = BuildConfig.serialRetryLimit}) async {
    if (serialPort == null) {
      throw SerialPortNotInstantiatedWell(
          typicalSerialPortNotInstantiatedWellMessage);
    }
    beginCommunication();

    serialPort!.write(magic.loadKeyConfigurationRequest);
    try {
      Uint8List response = await streamController!.stream.first
          .timeout(const Duration(seconds: 5));
      print('Received response: $response');
      closeCommunication();
      onResponseLoadKeyConfiguraiton(response, retryLimit);
    } on TimeoutException {
      closeCommunication();
      rethrow;
    }
  }

  void onResponseLoadKeyConfiguraiton(Uint8List response, int retryLimit) {
    onFailed() {
      if (retryLimit == 0) {
        throw SerialPortCommunicationDoneIncompleted(
            "Serial commuication has been done incompletely.");
      }
      requestLoadKeyConfiguration(retryLimit: retryLimit - 1);
    }

    if (response.length != magic.magicLength + keyConfigArrayLength) {
      onFailed();
    }
    if (!SerialDeviceUtils.parseResponseHead(response)
        .equals(magic.loadKeyConfigurationResponse)) {
      onFailed();
    }

    Globals.instance.applyCurrentSerialDeviceKeyConfigToThis(
        KeyConfig.fromUint8List(SerialDeviceUtils.parseResponseBody(response)));
  }

  void requestSaveKeyConfiguration(
      {int retryLimit = BuildConfig.serialRetryLimit}) async {
    if (serialPort == null) {
      throw SerialPortNotInstantiatedWell('SerialPort is `null`');
    }
    beginCommunication();

    serialPort!.write(magic.loadKeyConfigurationRequest);
    try {
      Uint8List response = await streamController!.stream.first
          .timeout(const Duration(seconds: 5));
      print('Received response: $response');
      closeCommunication();
      onResponseLoadKeyConfiguraiton(response, retryLimit);
    } on TimeoutException {
      closeCommunication();
      rethrow;
    }
  }

  void onResponseSaveKeyConfiguraiton(Uint8List response, int retryLimit) {
    onFailed() {
      if (retryLimit == 0) {
        throw SerialPortCommunicationDoneIncompleted(
            typicalSerialPortCommunicationDoneIncompletedMessage);
      }
      requestLoadKeyConfiguration(retryLimit: retryLimit - 1);
    }

    if (response.length != magic.magicLength + keyConfigArrayLength) {
      onFailed();
      return;
    }
    if (!SerialDeviceUtils.parseResponseHead(response)
        .equals(magic.loadKeyConfigurationResponse)) {
      onFailed();
      return;
    }

    Globals.instance.applyCurrentSerialDeviceKeyConfigToThis(
        KeyConfig.fromUint8List(SerialDeviceUtils.parseResponseBody(response)));
  }*/
}
