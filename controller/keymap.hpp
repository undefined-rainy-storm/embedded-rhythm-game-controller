#ifndef KEYCONFIG_H
#define KEYCONFIG_H

class KeyConfig
{
private:
  static KeyConfig *instance;

  // Private constructor
  KeyConfig(int esc,
            int enter,
            int tab,
            int space,
            int speedUp,
            int speedDown,
            int rewind,
            int leftShift,
            int rightShift,
            int arrowUp,
            int arrowDown,
            int arrowLeft,
            int arrowRight,
            int tuneLeftSide,
            int tuneS,
            int tuneD,
            int tuneF,
            int tuneC,
            int tuneM,
            int tuneJ,
            int tuneK,
            int tuneL,
            int tuneRightSide,
            int emoticon1,
            int emoticon2,
            int emoticon3,
            int emoticon4,
            int emoticon5);

  // Delete copy constructor and assignment operator
  KeyConfig(const KeyConfig &) = delete;
  KeyConfig &operator=(const KeyConfig &) = delete;

public:
  // Static method to access the singleton instance
  static KeyConfig *getInstance();

  // Public variables
  int esc;
  int enter;
  int tab;   // for Difficulty(Lobby)
  int space; // for Option(Lobby), Manual Fever(Ingame)

  int speedUp;   // digit1
  int speedDown; // digit2
  int rewind;    // Backspace

  int leftShift;  // It may be useless (duplicated with tuneLeftSide in default)
  int rightShift; // It may be useless (duplicated with tuneRightSide in default)

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

  int emoticon1; // digit3
  int emoticon2; // digit4
  int emoticon3; // digit5
  int emoticon4; // digit6
  int emoticon5; // digit7
};

#endif // KEYCONFIG_H
