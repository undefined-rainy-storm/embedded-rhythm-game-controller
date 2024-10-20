import 'package:configurator/models/each_key_config.dart';

class KeyConfig {
  EachKeyConfig esc;
  EachKeyConfig enter;
  EachKeyConfig tab; // for Difficulty(Lobby)
  EachKeyConfig space; // for Option(Lobby), Manual Fever(Ingame)

  EachKeyConfig speedUp; // digit1
  EachKeyConfig speedDown; // digit2
  EachKeyConfig rewind; // Backspace

  EachKeyConfig leftShift; // It may be useless (duplicated with tuneLeftSide in default)
  EachKeyConfig rightShift; // It may be useless (duplicated with tuneRightSide in default)

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
}
