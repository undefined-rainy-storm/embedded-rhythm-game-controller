import 'package:flutter/material.dart';

enum SelectedDeviceState {
  idle,
  establishing,
  valid,
  invalid,
}

class SelectedDeviceStateUtils {
  static Map<SelectedDeviceState, Color> selectedDeviceStateColorMap = {
    SelectedDeviceState.idle: Colors.black,
    SelectedDeviceState.establishing: Colors.orange,
    SelectedDeviceState.valid: Colors.green,
    SelectedDeviceState.invalid: Colors.red
  };

  static Color getColor(SelectedDeviceState state) {
    return selectedDeviceStateColorMap[state] ?? Colors.black;
  }
}
