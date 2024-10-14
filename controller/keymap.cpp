#include "default.h"
#include "keymap.h"
#include "utils.h"

KeymapConfig::KeymapConfig(keymap_t *map) {
  this->map = map;
}

int *KeymapConfig::to_array() {
  int* _return = new int[KEYMAP_VALUE_COUNT];

  _return[0]  = (isnan(this->map->esc) || this->map->esc == -1 ? DEFAULT_KEY_ESC : this->map->esc);
  _return[1]  = (isnan(this->map->enter) || this->map->enter == -1 ? DEFAULT_KEY_ENTER : this->map->enter);
  _return[2]  = (isnan(this->map->tab) || this->map->tab == -1 ? DEFAULT_KEY_TAB : this->map->tab);
  _return[3]  = (isnan(this->map->space) || this->map->space == -1 ? DEFAULT_KEY_SPACE : this->map->space);
  _return[4]  = (isnan(this->map->speedUp) || this->map->speedUp == -1 ? DEFAULT_KEY_SPEEDUP : this->map->speedUp);
  _return[5]  = (isnan(this->map->speedDown) || this->map->speedDown == -1 ? DEFAULT_KEY_SPEEDDOWN : this->map->speedDown);
  _return[6]  = (isnan(this->map->rewindKey) || this->map->rewindKey == -1 ? DEFAULT_KEY_REWINDKEY : this->map->rewindKey);
  _return[7]  = (isnan(this->map->leftShift) || this->map->leftShift == -1 ? DEFAULT_KEY_LEFTSHIFT : this->map->leftShift);
  _return[8]  = (isnan(this->map->rightShift) || this->map->rightShift == -1 ? DEFAULT_KEY_RIGHTSHIFT : this->map->rightShift);
  _return[9]  = (isnan(this->map->arrowUp) || this->map->arrowUp == -1 ? DEFAULT_KEY_ARROWUP : this->map->arrowUp);
  _return[10] = (isnan(this->map->arrowDown) || this->map->arrowDown == -1 ? DEFAULT_KEY_ARROWDOWN : this->map->arrowDown);
  _return[11] = (isnan(this->map->arrowLeft) || this->map->arrowLeft == -1 ? DEFAULT_KEY_ARROWLEFT : this->map->arrowLeft);
  _return[12] = (isnan(this->map->arrowRight) || this->map->arrowRight == -1 ? DEFAULT_KEY_ARROWRIGHT : this->map->arrowRight);
  _return[13] = (isnan(this->map->tuneLeftSide)  || this->map->tuneLeftSide == -1 ? DEFAULT_KEY_TUNELEFTSIDE : this->map->tuneLeftSide);
  _return[14] = (isnan(this->map->tuneS) || this->map->tuneS == -1 ? DEFAULT_KEY_TUNES : this->map->tuneS);
  _return[15] = (isnan(this->map->tuneD) || this->map->tuneD == -1 ? DEFAULT_KEY_TUNED : this->map->tuneD);
  _return[16] = (isnan(this->map->tuneF) || this->map->tuneF == -1 ? DEFAULT_KEY_TUNEF : this->map->tuneF);
  _return[17] = (isnan(this->map->tuneC) || this->map->tuneC == -1 ? DEFAULT_KEY_TUNEC : this->map->tuneC);
  _return[18] = (isnan(this->map->tuneM) || this->map->tuneM == -1 ? DEFAULT_KEY_TUNEM : this->map->tuneM);
  _return[19] = (isnan(this->map->tuneJ) || this->map->tuneJ == -1 ? DEFAULT_KEY_TUNEJ : this->map->tuneJ);
  _return[20] = (isnan(this->map->tuneK) || this->map->tuneK == -1 ? DEFAULT_KEY_TUNEK : this->map->tuneK);
  _return[21] = (isnan(this->map->tuneL) || this->map->tuneL == -1 ? DEFAULT_KEY_TUNEL : this->map->tuneL);
  _return[22] = (isnan(this->map->tuneRightSide) || this->map->tuneRightSide == -1 ? DEFAULT_KEY_TUNERIGHTSIDE : this->map->tuneRightSide);
  _return[23] = (isnan(this->map->emoticon1) || this->map->emoticon1 == -1 ? DEFAULT_KEY_EMOTICON1 : this->map->emoticon1);
  _return[24] = (isnan(this->map->emoticon2) || this->map->emoticon2 == -1 ? DEFAULT_KEY_EMOTICON2 : this->map->emoticon2);
  _return[25] = (isnan(this->map->emoticon3) || this->map->emoticon3 == -1 ? DEFAULT_KEY_EMOTICON3 : this->map->emoticon3);
  _return[26] = (isnan(this->map->emoticon4) || this->map->emoticon4 == -1 ? DEFAULT_KEY_EMOTICON4 : this->map->emoticon4);
  _return[27] = (isnan(this->map->emoticon5) || this->map->emoticon5 == -1 ? DEFAULT_KEY_EMOTICON5 : this->map->emoticon5);

  // Return the pointer to the array
  return _return;
}
