import 'dart:typed_data';
import 'package:configurator/models/each_key_config.dart';
import 'package:configurator/models/error_key_config.dart';
import 'package:configurator/models/keycode.dart';

// Todo: Find more better way.
const keyConfigArrayLength = 28;

class KeyConfig {
  EachKeyConfig esc;
  EachKeyConfig enter;
  EachKeyConfig tab; // for Difficulty(Lobby)
  EachKeyConfig space; // for Option(Lobby), Manual Fever(Ingame)

  EachKeyConfig speedUp; // digit1
  EachKeyConfig speedDown; // digit2
  EachKeyConfig rewind; // Backspace

  EachKeyConfig
      leftShift; // It may be useless (duplicated with tuneLeftSide in default)
  EachKeyConfig
      rightShift; // It may be useless (duplicated with tuneRightSide in default)

  EachKeyConfig arrowUp;
  EachKeyConfig arrowDown;
  EachKeyConfig arrowLeft;
  EachKeyConfig arrowRight;

  EachKeyConfig tuneLeftSide;
  EachKeyConfig tuneS;
  EachKeyConfig tuneD;
  EachKeyConfig tuneF;
  EachKeyConfig tuneC;
  EachKeyConfig tuneM;
  EachKeyConfig tuneJ;
  EachKeyConfig tuneK;
  EachKeyConfig tuneL;
  EachKeyConfig tuneRightSide;

  EachKeyConfig emoticon1; // digit3
  EachKeyConfig emoticon2; // digit4
  EachKeyConfig emoticon3; // digit5
  EachKeyConfig emoticon4; // digit6
  EachKeyConfig emoticon5; // digit7

  KeyConfig(
    this.esc,
    this.enter,
    this.tab,
    this.space,
    this.speedUp,
    this.speedDown,
    this.rewind,
    this.leftShift,
    this.rightShift,
    this.arrowUp,
    this.arrowDown,
    this.arrowLeft,
    this.arrowRight,
    this.tuneLeftSide,
    this.tuneS,
    this.tuneD,
    this.tuneF,
    this.tuneC,
    this.tuneM,
    this.tuneJ,
    this.tuneK,
    this.tuneL,
    this.tuneRightSide,
    this.emoticon1,
    this.emoticon2,
    this.emoticon3,
    this.emoticon4,
    this.emoticon5,
  );

  KeyConfig.clone(KeyConfig other)
      : this(
            EachKeyConfig.clone(other.esc),
            EachKeyConfig.clone(other.enter),
            EachKeyConfig.clone(other.tab),
            EachKeyConfig.clone(other.space),
            EachKeyConfig.clone(other.speedUp),
            EachKeyConfig.clone(other.speedDown),
            EachKeyConfig.clone(other.rewind),
            EachKeyConfig.clone(other.leftShift),
            EachKeyConfig.clone(other.rightShift),
            EachKeyConfig.clone(other.arrowUp),
            EachKeyConfig.clone(other.arrowDown),
            EachKeyConfig.clone(other.arrowLeft),
            EachKeyConfig.clone(other.arrowRight),
            EachKeyConfig.clone(other.tuneLeftSide),
            EachKeyConfig.clone(other.tuneS),
            EachKeyConfig.clone(other.tuneD),
            EachKeyConfig.clone(other.tuneF),
            EachKeyConfig.clone(other.tuneC),
            EachKeyConfig.clone(other.tuneM),
            EachKeyConfig.clone(other.tuneJ),
            EachKeyConfig.clone(other.tuneK),
            EachKeyConfig.clone(other.tuneL),
            EachKeyConfig.clone(other.tuneRightSide),
            EachKeyConfig.clone(other.emoticon1),
            EachKeyConfig.clone(other.emoticon2),
            EachKeyConfig.clone(other.emoticon3),
            EachKeyConfig.clone(other.emoticon4),
            EachKeyConfig.clone(other.emoticon5));

  // @override
  // int get hashCode

  factory KeyConfig.fromUint8List(Uint8List list) {
    if (list.length != keyConfigArrayLength) {
      throw Uint8ListLengthNotOrTooEnough(
          'Uint8List\'s Length is not enough or too long.');
    }
    return Function.apply(
        KeyConfig.new,
        list.map<EachKeyConfig>((each) {
          return EachKeyConfig(
              keycode: ArduinoKeycode.toKey(each % (1 << 8)),
              enabled: (each / (1 << 8) == 0));
        }).toList()) as KeyConfig;
  }

  @override
  bool operator ==(covariant KeyConfig other) {
    if (identical(this, other)) return true;
    return esc == other.esc &&
        enter == other.enter &&
        tab == other.tab &&
        space == other.space &&
        speedUp == other.speedUp &&
        speedDown == other.speedDown &&
        rewind == other.rewind &&
        leftShift == other.leftShift &&
        rightShift == other.rightShift &&
        arrowUp == other.arrowUp &&
        arrowDown == other.arrowDown &&
        arrowLeft == other.arrowLeft &&
        arrowRight == other.arrowRight &&
        tuneLeftSide == other.tuneLeftSide &&
        tuneS == other.tuneS &&
        tuneD == other.tuneD &&
        tuneF == other.tuneF &&
        tuneC == other.tuneC &&
        tuneM == other.tuneM &&
        tuneJ == other.tuneJ &&
        tuneK == other.tuneK &&
        tuneL == other.tuneL &&
        tuneRightSide == other.tuneRightSide &&
        emoticon1 == other.emoticon1 &&
        emoticon2 == other.emoticon2 &&
        emoticon3 == other.emoticon3 &&
        emoticon4 == other.emoticon4 &&
        emoticon5 == other.emoticon5;
  }
}
