class KeyConfig {
  int esc;
  int enter;
  int tab;         // for Difficulty(Lobby)
  int space;       // for Option(Lobby), Manual Fever(Ingame)

  int speedUp;     // digit1
  int speedDown;   // digit2
  int rewind;      // Backspace

  int leftShift;   // It may be useless (duplicated with tuneLeftSide in default)
  int rightShift;  // It may be useless (duplicated with tuneRightSide in default)

  int arrowUp;
  int arrowDown;
  int arrowLeft;
  int arrowRight;

  int tuneLeftSide;
  int tuneS;
  int tuneD;
  int tuneF;
  int tuneC;
  int tuneM;
  int tuneJ;
  int tuneK;
  int tuneL;
  int tuneRightSide;

  int emoticon1;  // digit3
  int emoticon2;  // digit4
  int emoticon3;  // digit5
  int emoticon4;  // digit6
  int emoticon5;  // digit7

  KeyConfig(
    this.esc,
    this.speedUp,
    this.speedDown,
    this.rewind,
    this.leftShift,
    this.rightShift,
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
