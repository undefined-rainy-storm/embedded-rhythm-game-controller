import 'package:configurator/models/each_key_config.dart';
import 'package:configurator/models/keycode.dart';
import 'package:configurator/models/key_config.dart';

class BuildConfig {
  static const serialBaudRate = 9600;
  static const serialBits = 8;
  static const serialStopBits = 1;
  static const serialParity = null;
  static const serialFlowControl = null;

  static const serialHandshakeRetryLimit = 1;
  static const serialDefaultRetryLimit = 3;
  static const serialHandshakeTimeout = 2;
  static const serialDefaultTimeout = 3;

  static KeyConfig defaultKeyConfig = KeyConfig(
    EachKeyConfig(keycode: Keycode.esc, enabled: false),
    EachKeyConfig(keycode: Keycode.enter, enabled: false),
    EachKeyConfig(keycode: Keycode.tab, enabled: false),
    EachKeyConfig(keycode: Keycode.undefined, enabled: false), // Keycode.space,
    EachKeyConfig(
        keycode: Keycode.undefined, enabled: false), // Keycode.speedUp,
    EachKeyConfig(
        keycode: Keycode.undefined, enabled: false), // Keycode.speedDown,
    EachKeyConfig(keycode: Keycode.backspace, enabled: false),
    EachKeyConfig(keycode: Keycode.leftShift, enabled: false),
    EachKeyConfig(keycode: Keycode.rightShift, enabled: false),
    EachKeyConfig(keycode: Keycode.upArrow, enabled: false),
    EachKeyConfig(keycode: Keycode.downArrow, enabled: false),
    EachKeyConfig(keycode: Keycode.leftArrow, enabled: false),
    EachKeyConfig(keycode: Keycode.rightArrow, enabled: false),
    EachKeyConfig(keycode: Keycode.leftShift, enabled: true),
    EachKeyConfig(keycode: Keycode.s, enabled: true), // Keycode.tuneS,
    EachKeyConfig(keycode: Keycode.d, enabled: true), // Keycode.tuneD,
    EachKeyConfig(keycode: Keycode.f, enabled: true), // Keycode.tuneF,
    EachKeyConfig(keycode: Keycode.c, enabled: true), // Keycode.tuneC,
    EachKeyConfig(keycode: Keycode.m, enabled: true), // Keycode.tuneM,
    EachKeyConfig(keycode: Keycode.j, enabled: true), // Keycode.tuneJ,
    EachKeyConfig(keycode: Keycode.k, enabled: true), // Keycode.tuneK,
    EachKeyConfig(keycode: Keycode.l, enabled: true), // Keycode.tuneL,
    EachKeyConfig(keycode: Keycode.rightShift, enabled: true),
    EachKeyConfig(
        keycode: Keycode.undefined, enabled: false), // Keycode.emoticon1,
    EachKeyConfig(
        keycode: Keycode.undefined, enabled: false), // Keycode.emoticon2,
    EachKeyConfig(
        keycode: Keycode.undefined, enabled: false), // Keycode.emoticon3,
    EachKeyConfig(
        keycode: Keycode.undefined, enabled: false), // Keycode.emoticon4,
    EachKeyConfig(
        keycode: Keycode.undefined, enabled: false), // Keycode.emoticon5,
  );
}
