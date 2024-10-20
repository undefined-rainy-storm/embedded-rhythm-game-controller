import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'dart:async';
import 'dart:typed_data';
import 'package:configurator/const/config.dart';
import 'package:configurator/const/magic.dart' as magic;

class SerialDevice {
  final SerialPort port;
  SerialPortReader? _reader;
  StreamSubscription<Uint8List>? _subscription;
  final StreamController<Uint8List> _controller = StreamController<Uint8List>();

  SerialDevice(String portName) : port = SerialPort(portName);

  void openRWComm() {
    if (!port.isOpen) {
      if (!port.openReadWrite()) {
        throw Exception('Failed to open port ${port.name}');
      }
    }

    port.config = SerialPortConfig()
      ..baudRate = Config.serialBaudRate
      ..bits = Config.serialBits
      ..stopBits = Config.serialStopBits
      ..parity = Config.serialParity ?? SerialPortParity.none
      ..setFlowControl(SerialPortFlowControl.none);

    // Ensure the reader is only initialized once
    _reader ??= SerialPortReader(port);

    // If there's an existing subscription, cancel it
    _subscription?.cancel();

    // Listen to the reader's stream
    _subscription = _reader!.stream.listen((data) {
      _controller.add(data);
    }, onDone: () {
      _controller.close();
    });
  }

  Future<bool> requestIsValidDevice() async {
    // Send a request to the device
    List<int> request = magic.handshakeRequest;
    port.write(Uint8List.fromList(request));

    try {
      // Wait for a response with a timeout
      Uint8List response =
          await _controller.stream.first.timeout(const Duration(seconds: 5));
      print('Received response: $response');
      // Process the response to determine if the device is valid
      return _processResponse(response);
    } catch (e) {
      print('Error: $e');
      // Handle timeout or errors
      return false;
    }
  }

  bool _processResponse(Uint8List response) {
    List<int> expectedResponse = magic.handshakeResponse;
    if (response.length != expectedResponse.length) {
      return false;
    }
    for (int i = 0; i < response.length; i++) {
      if (response[i] != expectedResponse[i]) {
        return false;
      }
    }
    return true;
  }

  void close() {
    _subscription?.cancel();
    _subscription = null;
    _reader = null;
    if (port.isOpen) {
      port.close();
    }
    _controller.close();
  }

  Stream<Uint8List> get stream => _controller.stream;
}
