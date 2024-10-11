import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:configurator/const/magic.dart' as magic;

const int configResponseTimeout = 2;

class SerialDevice {
  String port;
  String deviceName;
  SerialPort? serialPort;
  bool get isValid => serialPort != null;
  SerialPortReader? reader;
  bool get isCommOpen => reader != null;

  SerialDevice(this.port, this.deviceName, {this.serialPort});

  void openRWComm() {
    if (!isValid || serialPort == null) {
      print('Invalid or null serial port');
      return;
    }

    print('open? ${serialPort!.isOpen}');
    // Close the port if it's already open
    if (serialPort!.isOpen) {
      serialPort!.close();
    }

    // Configure the serial port
    final config = serialPort!.config;
    config.baudRate = 9600; // Set the baud rate to 9600
    config.bits = 8; // Data bits (default 8)
    config.stopBits = 1; // Stop bits (default 1)
    config.parity = 0; // Parity (default 0, no parity)

    // Apply the configuration
    serialPort!.config = config;

    // Attempt to open the port for reading and writing
    if (serialPort!.openReadWrite()) {
      print('Serial port opened successfully with baud rate 9600');

      // Ensure the reader is created and attached to the port
      reader = SerialPortReader(serialPort!);

      // Listen to the data stream
      reader!.stream.listen((data) {
        print('Data received: ${String.fromCharCodes(data)}');
        // Handle the incoming data here, update UI, etc.
      }, onError: (error) {
        print('Error reading from serial port: $error');
      });
    } else {
      print('Failed to open serial port');
      reader = null; // Ensure reader is null if opening the port fails
    }
  }

  Future<bool> requestIsValidDevice() async {
    if (!isValid || !isCommOpen) return false;

    serialPort!.write(magic.handshakeRequest);

    // Create a completer to handle asynchronous result
    final completer = Completer<bool>();

    // Buffer to accumulate incoming data
    List<int> buffer = [];

    // Listen to the serial port stream
    StreamSubscription<Uint8List>? subscription;

    subscription = reader!.stream.listen((data) {
      buffer.addAll(data);

      // Check if buffer has enough data to compare
      if (buffer.length >= magic.handshakeResponse.length) {
        // Extract the expected length of bytes
        List<int> received = buffer.sublist(0, magic.handshakeResponse.length);

        if (listEquals(received, magic.handshakeResponse)) {
          // Valid device response received
          completer.complete(true);
          subscription?.cancel();
        } else {
          // Invalid response
          completer.complete(false);
          subscription?.cancel();
        }
      }
    }, onError: (error) {
      // Handle any errors
      completer.complete(false);
      subscription?.cancel();
    });

    // Timeout if no response is received within 2 seconds
    return completer.future.timeout(Duration(seconds: configResponseTimeout),
        onTimeout: () {
      subscription?.cancel();
      return false;
    });
  }

  void requestConfiguration() {
    if (!isValid) return;
    serialPort!.write(magic.handshakeRequest);
  }

  void _setHandlerOnReady(void Function(Uint8List handler) handler) {
    if (!isCommOpen) return;
    reader!.stream.listen(handler);
  }

  void _sendData(Uint8List data) {
    serialPort!.write(data);
  }
}
