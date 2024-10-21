import 'dart:async';
import 'dart:typed_data';

import 'package:configurator/models/error_serial_device.dart';
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

    // Initialize the reader and controller
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

  Future<bool> checkDeviceIsValid() async => await requestHandshake();

  Future<bool> requestHandshake() async {
    if (serialPort == null) return false;
    try {
      beginCommunication();
    } on SerialPortCannotOpen catch (e) {
      return false;
    } on SerialPortIsAlreadyUsed catch (e) {
      return false;
    }

    serialPort!.write(magic.handshakeRequest);
    try {
      Uint8List response = await streamController!.stream.first
          .timeout(const Duration(seconds: 5));
      print('Received response: $response');
      closeCommunication();
      return response.equals(magic.handshakeResponse);
    } on TimeoutException {
      closeCommunication();
      return false;
    }
  }

  Future<bool> requestLoadKeyConfiguration() async {
    if (serialPort == null) return false;
    try {
      beginCommunication();
    } on SerialPortCannotOpen {
      return false;
    } on StreamControllerNotInstantiatedWell {
      return false;
    }

    serialPort!.write(magic.loadKeyConfigurationRequest);
    try {
      Uint8List response = await streamController!.stream.first
          .timeout(const Duration(seconds: 5));
      print('Received response: $response');
      closeCommunication();
      return response.equals(magic.loadKeyConfigurationResponse);
    } on TimeoutException catch (e) {
      closeCommunication();
      return false;
    }
  }
}
