import 'package:configurator/models/each_key_config.dart';
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
    EachKeyConfig(keycode: Keycode.esc, enabled: true),
    EachKeyConfig(keycode: Keycode.enter, enabled: true),
    EachKeyConfig(keycode: Keycode.tab, enabled: true),
    EachKeyConfig(keycode: Keycode.undefined, enabled: false), // Keycode.space,
    EachKeyConfig(keycode: Keycode.undefined, enabled: false), // Keycode.speedUp,
    EachKeyConfig(keycode: Keycode.undefined, enabled: false), // Keycode.speedDown,
    EachKeyConfig(keycode: Keycode.backspace, enabled: true),
    EachKeyConfig(keycode: Keycode.leftShift, enabled: true),
    EachKeyConfig(keycode: Keycode.rightShift, enabled: true),
    EachKeyConfig(keycode: Keycode.upArrow, enabled: true),
    EachKeyConfig(keycode: Keycode.downArrow, enabled: true),
    EachKeyConfig(keycode: Keycode.leftArrow, enabled: true),
    EachKeyConfig(keycode: Keycode.rightArrow, enabled: true),
    EachKeyConfig(keycode: Keycode.leftShift, enabled: true),
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.tuneS,
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.tuneD,
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.tuneF,
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.tuneC,
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.tuneM,
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.tuneJ,
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.tuneK,
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.tuneL,
    EachKeyConfig(keycode: Keycode.rightShift, enabled: true),
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.emoticon1,
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.emoticon2,
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.emoticon3,
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.emoticon4,
    EachKeyConfig(keycode: Keycode.undefined, enabled: true), // Keycode.emoticon5,
  );
}
