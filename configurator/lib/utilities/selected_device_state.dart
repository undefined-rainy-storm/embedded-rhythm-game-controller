import 'package:flutter/material.dart';

enum SerialDeviceState {
  idle,
  establishing,
  valid,
  invalid,
  expired,
}

class SerialDeviceStateUtils {
  static Map<SerialDeviceState, Color> serialDeviceStateColorMap = {
    SerialDeviceState.idle: Colors.black,
    SerialDeviceState.establishing: Colors.orange,
    SerialDeviceState.valid: Colors.green,
    SerialDeviceState.invalid: Colors.red
  };

  static Color getColor(SerialDeviceState state) {
    return serialDeviceStateColorMap[state] ?? Colors.black;
  }
}
