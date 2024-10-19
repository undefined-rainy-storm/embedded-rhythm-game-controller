import 'package:flutter_libserialport/flutter_libserialport.dart';

class LibserialportUtils {
  static bool isValid(String port) {
    try {
      return SerialPort(port).description != null;
    } on ArgumentError {
      return false;
    }
  }
}
