#ifndef KEYCONFIG_H
#define KEYCONFIG_H

#define DEFAULT_KEY_ESC 177
#define DEFAULT_KEY_ENTER 176
#define DEFAULT_KEY_TAB 179
#define DEFAULT_KEY_SPACE -1
#define DEFAULT_KEY_SPEEDUP -1  // digit1
#define DEFAULT_KEY_SPEEDDOWN -1  // digit2
#define DEFAULT_KEY_REWINDKEY 178
#define DEFAULT_KEY_LEFTSHIFT 129
#define DEFAULT_KEY_RIGHTSHIFT 134
#define DEFAULT_KEY_ARROWUP 218
#define DEFAULT_KEY_ARROWDOWN 217
#define DEFAULT_KEY_ARROWLEFT 216
#define DEFAULT_KEY_ARROWRIGHT 215
#define DEFAULT_KEY_TUNELEFTSIDE 129
#define DEFAULT_KEY_TUNES 83
#define DEFAULT_KEY_TUNED 68
#define DEFAULT_KEY_TUNEF 70
#define DEFAULT_KEY_TUNEC 67
#define DEFAULT_KEY_TUNEM 77
#define DEFAULT_KEY_TUNEJ 74
#define DEFAULT_KEY_TUNEK 75
#define DEFAULT_KEY_TUNEL 76
#define DEFAULT_KEY_TUNERIGHTSIDE 134
#define DEFAULT_KEY_EMOTICON1 -1  // digit3
#define DEFAULT_KEY_EMOTICON2 -1  // digit4
#define DEFAULT_KEY_EMOTICON3 -1  // digit5
#define DEFAULT_KEY_EMOTICON4 -1  // digit6
#define DEFAULT_KEY_EMOTICON5 -1  // digit7

#define EEPROM_ADDR_BUTTON_CONFIG_STRUCT

class ButtonConfig
{
private:
  static ButtonConfig *instance;

  // Private constructor
  ButtonConfig(int esc,
            int enter,
            int tab,
            int space,
            int speedUp,
            int speedDown,
            int rewindKey,
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
  ButtonConfig(const ButtonConfig &) = delete;
  ButtonConfig &operator=(const ButtonConfig &) = delete;

public:
  // Static method to access the singleton instance
  static ButtonConfig *getInstance();

  // Public variables
  int esc;
  int enter;
  int tab;   // for Difficulty(Lobby)
  int space; // for Option(Lobby), Manual Fever(Ingame)

  int speedUp;   // digit1
  int speedDown; // digit2
  int rewindKey;    // Backspace

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

struct button_config_struct {
  int esc;
  int enter;
  int tab;   // for Difficulty(Lobby)
  int space; // for Option(Lobby), Manual Fever(Ingame)

  int speedUp;   // digit1
  int speedDown; // digit2
  int rewindKey;    // Backspace

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
