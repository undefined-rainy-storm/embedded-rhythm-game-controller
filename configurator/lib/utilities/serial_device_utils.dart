import 'dart:typed_data';

class SerialDeviceUtils {
  static Uint8List parseResponseHead(Uint8List response) {
    return response.sublist(0, 9);
  }

  static Uint8List parseResponseBody(Uint8List response) {
    return response.sublist(
      9,
    );
  }
}
