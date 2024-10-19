import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:configurator/models/keycode.dart';
import 'package:configurator/models/key_config.dart';

class BuildConfig {
  static const serialBaudRate = 9600;
  static const serialBits = 8;
  static const serialStopBits = 1;
  static const serialParity = null;
  static const serialFlowControl = SerialPortFlowControl.none;

  static KeyConfig defaultKeyConfig = KeyConfig(
    Keycode.esc,
    Keycode.enter,
    Keycode.tab,
    Keycode.undefined, // Keycode.space,
    Keycode.undefined, // Keycode.speedUp,
    Keycode.undefined, // Keycode.speedDown,
    Keycode.backspace,
    Keycode.leftShift,
    Keycode.rightShift,
    Keycode.upArrow,
    Keycode.downArrow,
    Keycode.leftArrow,
    Keycode.rightArrow,
    Keycode.leftShift,
    Keycode.undefined, // Keycode.tuneS,
    Keycode.undefined, // Keycode.tuneD,
    Keycode.undefined, // Keycode.tuneF,
    Keycode.undefined, // Keycode.tuneC,
    Keycode.undefined, // Keycode.tuneM,
    Keycode.undefined, // Keycode.tuneJ,
    Keycode.undefined, // Keycode.tuneK,
    Keycode.undefined, // Keycode.tuneL,
    Keycode.rightShift,
    Keycode.undefined, // Keycode.emoticon1,
    Keycode.undefined, // Keycode.emoticon2,
    Keycode.undefined, // Keycode.emoticon3,
    Keycode.undefined, // Keycode.emoticon4,
    Keycode.undefined, // Keycode.emoticon5,
  );
}
