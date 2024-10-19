import 'package:configurator/models/keycode.dart';

class KeyConfig {
  Keycode esc;
  Keycode enter;
  Keycode tab; // for Difficulty(Lobby)
  Keycode space; // for Option(Lobby), Manual Fever(Ingame)

  Keycode speedUp; // digit1
  Keycode speedDown; // digit2
  Keycode rewind; // Backspace

  Keycode
      leftShift; // It may be useless (duplicated with tuneLeftSide in default)
  Keycode
      rightShift; // It may be useless (duplicated with tuneRightSide in default)

  Keycode arrowUp;
  Keycode arrowDown;
  Keycode arrowLeft;
  Keycode arrowRight;

  Keycode tuneLeftSide;
  Keycode tuneS;
  Keycode tuneD;
  Keycode tuneF;
  Keycode tuneC;
  Keycode tuneM;
  Keycode tuneJ;
  Keycode tuneK;
  Keycode tuneL;
  Keycode tuneRightSide;

  Keycode emoticon1; // digit3
  Keycode emoticon2; // digit4
  Keycode emoticon3; // digit5
  Keycode emoticon4; // digit6
  Keycode emoticon5; // digit7

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
