import 'dart:typed_data';
import 'package:flutter_libserialport/flutter_libserialport.dart';

class SerialDevice {
  String port;
  String deviceName;
  SerialPort? serialPort;
  bool get isValid => serialPort != null;
  SerialPortReader? reader;
  bool get isCommOpen => reader != null;

  SerialDevice(this.port, this.deviceName, {this.serialPort});

  void openRWComm() {
    if (!isValid) return;

    if (serialPort!.openReadWrite()) {
      reader = SerialPortReader(serialPort!);
    } else {
      reader = null;
    }
  }

  void _setHandlerOnReady(void Function(Uint8List handler) handler) {
    if (!isCommOpen) return;
    reader!.stream.listen(handler);
  }

  void _sendData(Uint8List data) {
    serialPort!.write(data);
  }
}
