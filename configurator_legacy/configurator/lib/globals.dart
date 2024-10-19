import 'package:configurator/const/config.dart';
import 'package:configurator/const/keycode.dart';
import 'package:configurator/classes/key_config.dart';

class Globals {
  late KeyConfig keyConfig;

  static Globals instance = Globals._privateConstructor();

  factory Globals() {
    return instance;
  }

  Globals._privateConstructor() {
    KeyConfig loaded = KeyConfig(
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined,
        Key.undefined);
    // Load from Arduino
    keyConfig = KeyConfig(
        loaded.esc != Key.undefined ? loaded.esc : Config.defaultKeyConfig.esc,
        loaded.enter != Key.undefined
            ? loaded.enter
            : Config.defaultKeyConfig.enter,
        loaded.tab != Key.undefined ? loaded.tab : Config.defaultKeyConfig.tab,
        loaded.space != Key.undefined
            ? loaded.space
            : Config.defaultKeyConfig.space,
        loaded.speedUp != Key.undefined
            ? loaded.speedUp
            : Config.defaultKeyConfig.speedUp,
        loaded.speedDown != Key.undefined
            ? loaded.speedDown
            : Config.defaultKeyConfig.speedDown,
        loaded.rewind != Key.undefined
            ? loaded.rewind
            : Config.defaultKeyConfig.rewind,
        loaded.leftShift != Key.undefined
            ? loaded.leftShift
            : Config.defaultKeyConfig.leftShift,
        loaded.rightShift != Key.undefined
            ? loaded.rightShift
            : Config.defaultKeyConfig.rightShift,
        loaded.arrowUp != Key.undefined
            ? loaded.arrowUp
            : Config.defaultKeyConfig.arrowUp,
        loaded.arrowDown != Key.undefined
            ? loaded.arrowDown
            : Config.defaultKeyConfig.arrowDown,
        loaded.arrowLeft != Key.undefined
            ? loaded.arrowLeft
            : Config.defaultKeyConfig.arrowLeft,
        loaded.arrowRight != Key.undefined
            ? loaded.arrowRight
            : Config.defaultKeyConfig.arrowRight,
        loaded.tuneLeftSide != Key.undefined
            ? loaded.tuneLeftSide
            : Config.defaultKeyConfig.tuneLeftSide,
        loaded.tuneS != Key.undefined
            ? loaded.tuneS
            : Config.defaultKeyConfig.tuneS,
        loaded.tuneD != Key.undefined
            ? loaded.tuneD
            : Config.defaultKeyConfig.tuneD,
        loaded.tuneF != Key.undefined
            ? loaded.tuneF
            : Config.defaultKeyConfig.tuneF,
        loaded.tuneC != Key.undefined
            ? loaded.tuneC
            : Config.defaultKeyConfig.tuneC,
        loaded.tuneM != Key.undefined
            ? loaded.tuneM
            : Config.defaultKeyConfig.tuneM,
        loaded.tuneJ != Key.undefined
            ? loaded.tuneJ
            : Config.defaultKeyConfig.tuneJ,
        loaded.tuneK != Key.undefined
            ? loaded.tuneK
            : Config.defaultKeyConfig.tuneK,
        loaded.tuneL != Key.undefined
            ? loaded.tuneL
            : Config.defaultKeyConfig.tuneL,
        loaded.tuneRightSide != Key.undefined
            ? loaded.tuneRightSide
            : Config.defaultKeyConfig.tuneRightSide,
        loaded.emoticon1 != Key.undefined
            ? loaded.emoticon1
            : Config.defaultKeyConfig.emoticon1,
        loaded.emoticon2 != Key.undefined
            ? loaded.emoticon2
            : Config.defaultKeyConfig.emoticon2,
        loaded.emoticon3 != Key.undefined
            ? loaded.emoticon3
            : Config.defaultKeyConfig.emoticon3,
        loaded.emoticon4 != Key.undefined
            ? loaded.emoticon4
            : Config.defaultKeyConfig.emoticon4,
        loaded.emoticon5 != Key.undefined
            ? loaded.emoticon5
            : Config.defaultKeyConfig.emoticon5);
  }
}
