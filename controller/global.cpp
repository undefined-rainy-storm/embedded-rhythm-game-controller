#include <EEPROM.h>
#include "config.h"
#include "default.h"
#include "global.h"
#include "utils.h"
#include "keymap.h"

Global* Global::instance = nullptr;

Global* Global::getInstance() {
  // Construct new
  if (instance == nullptr) {
    KeymapConfig keymap;
    EEPROM.get(EEPROM_GLOBAL_KEYMAP_ADDRESS, keymap.map);
    if (isnan(keymap.map.esc)) keymap.map.esc = DEFAULT_KEY_ESC;
    if (isnan(keymap.map.enter)) keymap.map.enter = DEFAULT_KEY_ENTER;
    if (isnan(keymap.map.tab)) keymap.map.tab = DEFAULT_KEY_TAB;
    if (isnan(keymap.map.space)) keymap.map.space = DEFAULT_KEY_SPACE;
    if (isnan(keymap.map.speedUp)) keymap.map.speedUp = DEFAULT_KEY_SPEEDUP;
    if (isnan(keymap.map.speedDown)) keymap.map.speedDown = DEFAULT_KEY_SPEEDDOWN;
    if (isnan(keymap.map.rewindKey)) keymap.map.rewindKey = DEFAULT_KEY_REWINDKEY;
    if (isnan(keymap.map.leftShift)) keymap.map.leftShift = DEFAULT_KEY_LEFTSHIFT;
    if (isnan(keymap.map.rightShift)) keymap.map.rightShift = DEFAULT_KEY_RIGHTSHIFT;
    if (isnan(keymap.map.arrowUp)) keymap.map.arrowUp = DEFAULT_KEY_ARROWUP;
    if (isnan(keymap.map.arrowDown)) keymap.map.arrowDown = DEFAULT_KEY_ARROWDOWN;
    if (isnan(keymap.map.arrowLeft)) keymap.map.arrowLeft = DEFAULT_KEY_ARROWLEFT;
    if (isnan(keymap.map.arrowRight)) keymap.map.arrowRight = DEFAULT_KEY_ARROWRIGHT;
    if (isnan(keymap.map.tuneLeftSide)) keymap.map.tuneLeftSide = DEFAULT_KEY_TUNELEFTSIDE;
    if (isnan(keymap.map.tuneS)) keymap.map.tuneS = DEFAULT_KEY_TUNES;
    if (isnan(keymap.map.tuneD)) keymap.map.tuneD = DEFAULT_KEY_TUNED;
    if (isnan(keymap.map.tuneF)) keymap.map.tuneF = DEFAULT_KEY_TUNEF;
    if (isnan(keymap.map.tuneC)) keymap.map.tuneC = DEFAULT_KEY_TUNEC;
    if (isnan(keymap.map.tuneM)) keymap.map.tuneM = DEFAULT_KEY_TUNEM;
    if (isnan(keymap.map.tuneJ)) keymap.map.tuneJ = DEFAULT_KEY_TUNEJ;
    if (isnan(keymap.map.tuneK)) keymap.map.tuneK = DEFAULT_KEY_TUNEK;
    if (isnan(keymap.map.tuneL)) keymap.map.tuneL = DEFAULT_KEY_TUNEL;
    if (isnan(keymap.map.tuneRightSide)) keymap.map.tuneRightSide = DEFAULT_KEY_TUNERIGHTSIDE;
    if (isnan(keymap.map.emoticon1)) keymap.map.emoticon1 = DEFAULT_KEY_EMOTICON1;
    if (isnan(keymap.map.emoticon2)) keymap.map.emoticon2 = DEFAULT_KEY_EMOTICON2;
    if (isnan(keymap.map.emoticon3)) keymap.map.emoticon3 = DEFAULT_KEY_EMOTICON3;
    if (isnan(keymap.map.emoticon4)) keymap.map.emoticon4 = DEFAULT_KEY_EMOTICON4;
    if (isnan(keymap.map.emoticon5)) keymap.map.emoticon5 = DEFAULT_KEY_EMOTICON5;
  }
  return instance;
}
