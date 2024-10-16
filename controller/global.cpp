// #include <StandardCplusplus.h>
#include <EEPROM.h>
#include "config.h"
#include "default.h"
#include "global.h"
#include "utils.h"
#include "keymap.h"

Global* Global::instance = nullptr;

Global::Global() {
}

void setDefaultIfInvalid(int& key, int defaultValue) {
  if (isnan(key) || key == -1) {
    key = defaultValue;
  }
}

Global* Global::getInstance() {
  if (instance == nullptr) {
    keymap_t _keymap;
    EEPROM.get(EEPROM_GLOBAL_KEYMAP_ADDRESS, _keymap);

    setDefaultIfInvalid(_keymap.esc, DEFAULT_KEY_ESC);
    setDefaultIfInvalid(_keymap.enter, DEFAULT_KEY_ENTER);
    setDefaultIfInvalid(_keymap.tab, DEFAULT_KEY_TAB);
    setDefaultIfInvalid(_keymap.space, DEFAULT_KEY_SPACE);
    setDefaultIfInvalid(_keymap.speedUp, DEFAULT_KEY_SPEEDUP);
    setDefaultIfInvalid(_keymap.speedDown, DEFAULT_KEY_SPEEDDOWN);
    setDefaultIfInvalid(_keymap.rewindKey, DEFAULT_KEY_REWINDKEY);
    setDefaultIfInvalid(_keymap.leftShift, DEFAULT_KEY_LEFTSHIFT);
    setDefaultIfInvalid(_keymap.rightShift, DEFAULT_KEY_RIGHTSHIFT);
    setDefaultIfInvalid(_keymap.arrowUp, DEFAULT_KEY_ARROWUP);
    setDefaultIfInvalid(_keymap.arrowDown, DEFAULT_KEY_ARROWDOWN);
    setDefaultIfInvalid(_keymap.arrowLeft, DEFAULT_KEY_ARROWLEFT);
    setDefaultIfInvalid(_keymap.arrowRight, DEFAULT_KEY_ARROWRIGHT);
    setDefaultIfInvalid(_keymap.tuneLeftSide, DEFAULT_KEY_TUNELEFTSIDE);
    setDefaultIfInvalid(_keymap.tuneS, DEFAULT_KEY_TUNES);
    setDefaultIfInvalid(_keymap.tuneD, DEFAULT_KEY_TUNED);
    setDefaultIfInvalid(_keymap.tuneF, DEFAULT_KEY_TUNEF);
    setDefaultIfInvalid(_keymap.tuneC, DEFAULT_KEY_TUNEC);
    setDefaultIfInvalid(_keymap.tuneM, DEFAULT_KEY_TUNEM);
    setDefaultIfInvalid(_keymap.tuneJ, DEFAULT_KEY_TUNEJ);
    setDefaultIfInvalid(_keymap.tuneK, DEFAULT_KEY_TUNEK);
    setDefaultIfInvalid(_keymap.tuneL, DEFAULT_KEY_TUNEL);
    setDefaultIfInvalid(_keymap.tuneRightSide, DEFAULT_KEY_TUNERIGHTSIDE);
    setDefaultIfInvalid(_keymap.emoticon1, DEFAULT_KEY_EMOTICON1);
    setDefaultIfInvalid(_keymap.emoticon2, DEFAULT_KEY_EMOTICON2);
    setDefaultIfInvalid(_keymap.emoticon3, DEFAULT_KEY_EMOTICON3);
    setDefaultIfInvalid(_keymap.emoticon4, DEFAULT_KEY_EMOTICON4);
    setDefaultIfInvalid(_keymap.emoticon5, DEFAULT_KEY_EMOTICON5);

    KeymapConfig _keymapConfig = KeymapConfig(&_keymap);
    Global::instance = new Global();
    Global::instance->keymap = _keymapConfig;
  }

  return instance;
}
