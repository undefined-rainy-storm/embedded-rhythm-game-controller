#ifndef KEYMAP
#define KEYMAP

#define KEYMAP_VALUE_COUNT 28

struct keymap {
  int esc;
  int enter;
  int tab;
  int space;
  int speedUp;
  int speedDown;
  int rewindKey;
  int leftShift;
  int rightShift;
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
  int emoticon1;
  int emoticon2;
  int emoticon3;
  int emoticon4;
  int emoticon5;
};

typedef struct keymap keymap_t;

class KeymapConfig {
public:
  keymap_t *map;
  int *to_array();
  KeymapConfig(keymap_t *map);
};

#endif
