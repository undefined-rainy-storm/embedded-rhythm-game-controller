import 'package:configurator/const/keycode.dart';
import 'package:configurator/classes/key_config.dart';

class Config {
  static const serialBaudRate = 9600;
  static const serialBits = 8;
  static const serialStopBits = 1;
  static const serialParity = null;

  static KeyConfig defaultKeyConfig = KeyConfig(
    Key.esc,
    Key.enter,
    Key.tab,
    Key.undefined, // Key.space,
    Key.undefined, // Key.speedUp,
    Key.undefined, // Key.speedDown,
    Key.backspace,
    Key.leftShift,
    Key.rightShift,
    Key.upArrow,
    Key.downArrow,
    Key.leftArrow,
    Key.rightArrow,
    Key.leftShift,
    Key.undefined, // Key.tuneS,
    Key.undefined, // Key.tuneD,
    Key.undefined, // Key.tuneF,
    Key.undefined, // Key.tuneC,
    Key.undefined, // Key.tuneM,
    Key.undefined, // Key.tuneJ,
    Key.undefined, // Key.tuneK,
    Key.undefined, // Key.tuneL,
    Key.rightShift,
    Key.undefined, // Key.emoticon1,
    Key.undefined, // Key.emoticon2,
    Key.undefined, // Key.emoticon3,
    Key.undefined, // Key.emoticon4,
    Key.undefined, // Key.emoticon5,
  );
}
