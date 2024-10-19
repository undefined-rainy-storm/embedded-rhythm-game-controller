import 'package:configurator/const/keycode.dart';

class KeyConfig {
  Key esc;
  Key enter;
  Key tab; // for Difficulty(Lobby)
  Key space; // for Option(Lobby), Manual Fever(Ingame)

  Key speedUp; // digit1
  Key speedDown; // digit2
  Key rewind; // Backspace

  Key leftShift; // It may be useless (duplicated with tuneLeftSide in default)
  Key rightShift; // It may be useless (duplicated with tuneRightSide in default)

  Key arrowUp;
  Key arrowDown;
  Key arrowLeft;
  Key arrowRight;

  Key tuneLeftSide;
  Key tuneS;
  Key tuneD;
  Key tuneF;
  Key tuneC;
  Key tuneM;
  Key tuneJ;
  Key tuneK;
  Key tuneL;
  Key tuneRightSide;

  Key emoticon1; // digit3
  Key emoticon2; // digit4
  Key emoticon3; // digit5
  Key emoticon4; // digit6
  Key emoticon5; // digit7

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
