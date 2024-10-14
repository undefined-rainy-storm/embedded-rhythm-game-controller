#include "default.h"
#include "keymap.h"
#include "utils.h"

int *KeymapConfig::to_array() {
  int _return[KEYMAP_VALUE_COUNT] = {
    (isnan(this->map.esc) ? this->map.esc : DEFAULT_KEY_ESC),
    (isnan(this->map.enter) ? this->map.enter : DEFAULT_KEY_ENTER),
    (isnan(this->map.tab) ? this->map.tab : DEFAULT_KEY_TAB),
    (isnan(this->map.space) ? this->map.space : DEFAULT_KEY_SPACE),
    (isnan(this->map.speedUp) ? this->map.speedUp : DEFAULT_KEY_SPEEDUP),
    (isnan(this->map.speedDown) ? this->map.speedDown : DEFAULT_KEY_SPEEDDOWN),
    (isnan(this->map.rewindKey) ? this->map.rewindKey : DEFAULT_KEY_REWINDKEY),
    (isnan(this->map.leftShift) ? this->map.leftShift : DEFAULT_KEY_LEFTSHIFT),
    (isnan(this->map.rightShift) ? this->map.rightShift : DEFAULT_KEY_RIGHTSHIFT),
    (isnan(this->map.arrowUp) ? this->map.arrowUp : DEFAULT_KEY_ARROWUP),
    (isnan(this->map.arrowDown) ? this->map.arrowDown : DEFAULT_KEY_ARROWDOWN),
    (isnan(this->map.arrowLeft) ? this->map.arrowLeft : DEFAULT_KEY_ARROWLEFT),
    (isnan(this->map.arrowRight) ? this->map.arrowRight : DEFAULT_KEY_ARROWRIGHT),
    (isnan(this->map.tuneLeftSide) ? this->map.tuneLeftSide : DEFAULT_KEY_TUNELEFTSIDE),
    (isnan(this->map.tuneS) ? this->map.tuneS : DEFAULT_KEY_TUNES),
    (isnan(this->map.tuneD) ? this->map.tuneD : DEFAULT_KEY_TUNED),
    (isnan(this->map.tuneF) ? this->map.tuneF : DEFAULT_KEY_TUNEF),
    (isnan(this->map.tuneC) ? this->map.tuneC : DEFAULT_KEY_TUNEC),
    (isnan(this->map.tuneM) ? this->map.tuneM : DEFAULT_KEY_TUNEM),
    (isnan(this->map.tuneJ) ? this->map.tuneJ : DEFAULT_KEY_TUNEJ),
    (isnan(this->map.tuneK) ? this->map.tuneK : DEFAULT_KEY_TUNEK),
    (isnan(this->map.tuneL) ? this->map.tuneL : DEFAULT_KEY_TUNEL),
    (isnan(this->map.tuneRightSide) ? this->map.tuneRightSide : DEFAULT_KEY_TUNERIGHTSIDE),
    (isnan(this->map.emoticon1) ? this->map.emoticon1 : DEFAULT_KEY_EMOTICON1),
    (isnan(this->map.emoticon2) ? this->map.emoticon2 : DEFAULT_KEY_EMOTICON2),
    (isnan(this->map.emoticon3) ? this->map.emoticon3 : DEFAULT_KEY_EMOTICON3),
    (isnan(this->map.emoticon4) ? this->map.emoticon4 : DEFAULT_KEY_EMOTICON4),
    (isnan(this->map.emoticon5) ? this->map.emoticon5 : DEFAULT_KEY_EMOTICON5)
  };
}
