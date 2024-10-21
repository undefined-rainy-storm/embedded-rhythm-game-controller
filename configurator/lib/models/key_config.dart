import 'package:configurator/models/each_key_config.dart';

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
    esc,
    enter,
    tab,
    space,
    speedUp,
    speedDown,
    rewind,
    leftShift,
    rightShift,
    arrowUp,
    arrowDown,
    arrowLeft,
    arrowRight,
    tuneLeftSide,
    tuneS,
    tuneD,
    tuneF,
    tuneC,
    tuneM,
    tuneJ,
    tuneK,
    tuneL,
    tuneRightSide,
    emoticon1,
    emoticon2,
    emoticon3,
    emoticon4,
    emoticon5,
  );

  KeyConfig.clone(KeyConfig other)
      : this(
            other.esc,
            other.enter,
            other.tab,
            other.space,
            other.speedUp,
            other.speedDown,
            other.rewind,
            other.leftShift,
            other.rightShift,
            other.arrowUp,
            other.arrowDown,
            other.arrowLeft,
            other.arrowRight,
            other.tuneLeftSide,
            other.tuneS,
            other.tuneD,
            other.tuneF,
            other.tuneC,
            other.tuneM,
            other.tuneJ,
            other.tuneK,
            other.tuneL,
            other.tuneRightSide,
            other.emoticon1,
            other.emoticon2,
            other.emoticon3,
            other.emoticon4,
            other.emoticon5);

  // @override
  // int get hashCode

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
