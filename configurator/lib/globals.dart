import 'package:configurator/build_config.dart';
import 'package:configurator/models/keycode.dart';
import 'package:configurator/models/key_config.dart';

class Globals {
  late KeyConfig keyConfig;

  static Globals instance = Globals._privateConstructor();

  factory Globals() {
    return instance;
  }

  Globals._privateConstructor() {
    KeyConfig loaded = KeyConfig(
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined,
        Keycode.undefined);
    // Load from Arduino
    keyConfig = KeyConfig(
        loaded.esc != Keycode.undefined
            ? loaded.esc
            : BuildConfig.defaultKeyConfig.esc,
        loaded.enter != Keycode.undefined
            ? loaded.enter
            : BuildConfig.defaultKeyConfig.enter,
        loaded.tab != Keycode.undefined
            ? loaded.tab
            : BuildConfig.defaultKeyConfig.tab,
        loaded.space != Keycode.undefined
            ? loaded.space
            : BuildConfig.defaultKeyConfig.space,
        loaded.speedUp != Keycode.undefined
            ? loaded.speedUp
            : BuildConfig.defaultKeyConfig.speedUp,
        loaded.speedDown != Keycode.undefined
            ? loaded.speedDown
            : BuildConfig.defaultKeyConfig.speedDown,
        loaded.rewind != Keycode.undefined
            ? loaded.rewind
            : BuildConfig.defaultKeyConfig.rewind,
        loaded.leftShift != Keycode.undefined
            ? loaded.leftShift
            : BuildConfig.defaultKeyConfig.leftShift,
        loaded.rightShift != Keycode.undefined
            ? loaded.rightShift
            : BuildConfig.defaultKeyConfig.rightShift,
        loaded.arrowUp != Keycode.undefined
            ? loaded.arrowUp
            : BuildConfig.defaultKeyConfig.arrowUp,
        loaded.arrowDown != Keycode.undefined
            ? loaded.arrowDown
            : BuildConfig.defaultKeyConfig.arrowDown,
        loaded.arrowLeft != Keycode.undefined
            ? loaded.arrowLeft
            : BuildConfig.defaultKeyConfig.arrowLeft,
        loaded.arrowRight != Keycode.undefined
            ? loaded.arrowRight
            : BuildConfig.defaultKeyConfig.arrowRight,
        loaded.tuneLeftSide != Keycode.undefined
            ? loaded.tuneLeftSide
            : BuildConfig.defaultKeyConfig.tuneLeftSide,
        loaded.tuneS != Keycode.undefined
            ? loaded.tuneS
            : BuildConfig.defaultKeyConfig.tuneS,
        loaded.tuneD != Keycode.undefined
            ? loaded.tuneD
            : BuildConfig.defaultKeyConfig.tuneD,
        loaded.tuneF != Keycode.undefined
            ? loaded.tuneF
            : BuildConfig.defaultKeyConfig.tuneF,
        loaded.tuneC != Keycode.undefined
            ? loaded.tuneC
            : BuildConfig.defaultKeyConfig.tuneC,
        loaded.tuneM != Keycode.undefined
            ? loaded.tuneM
            : BuildConfig.defaultKeyConfig.tuneM,
        loaded.tuneJ != Keycode.undefined
            ? loaded.tuneJ
            : BuildConfig.defaultKeyConfig.tuneJ,
        loaded.tuneK != Keycode.undefined
            ? loaded.tuneK
            : BuildConfig.defaultKeyConfig.tuneK,
        loaded.tuneL != Keycode.undefined
            ? loaded.tuneL
            : BuildConfig.defaultKeyConfig.tuneL,
        loaded.tuneRightSide != Keycode.undefined
            ? loaded.tuneRightSide
            : BuildConfig.defaultKeyConfig.tuneRightSide,
        loaded.emoticon1 != Keycode.undefined
            ? loaded.emoticon1
            : BuildConfig.defaultKeyConfig.emoticon1,
        loaded.emoticon2 != Keycode.undefined
            ? loaded.emoticon2
            : BuildConfig.defaultKeyConfig.emoticon2,
        loaded.emoticon3 != Keycode.undefined
            ? loaded.emoticon3
            : BuildConfig.defaultKeyConfig.emoticon3,
        loaded.emoticon4 != Keycode.undefined
            ? loaded.emoticon4
            : BuildConfig.defaultKeyConfig.emoticon4,
        loaded.emoticon5 != Keycode.undefined
            ? loaded.emoticon5
            : BuildConfig.defaultKeyConfig.emoticon5);
  }
}
