import 'dart:typed_data';

extension Uint8ListExtension on Uint8List {
  bool equals(Uint8List other) {
    if (this.length != other.length) {
      return false;
    }

    for (int i = 0; i < other.length; i++) {
      if (this[i] != other[i]) {
        return false;
      }
    }
    return true;
  }
}
