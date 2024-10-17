#include <Keyboard.h>
#include "global.h"
#include "const.h"
#include "handlers.h"

Global *global = Global::getInstance();
void onButtonDigitalRead_outKeyboardIO (
  int _input_esc,
  int _input_enter,
  int _input_tab,
  int _input_space,
  int _input_speed_up,
  int _input_speed_down,
  int _input_rewind_key,
  int _input_left_shift,
  int _input_right_shift,
  int _input_arrow_up,
  int _input_arrow_down,
  int _input_arrow_left,
  int _input_arrow_right,
  int _input_tune_left_side,
  int _input_tune_s,
  int _input_tune_d,
  int _input_tune_f,
  int _input_tune_c,
  int _input_tune_m,
  int _input_tune_j,
  int _input_tune_k,
  int _input_tune_l,
  int _input_tune_right_side,
  int _input_emoticon1,
  int _input_emoticon2,
  int _input_emoticon3,
  int _input_emoticon4,
  int _input_emoticon5
) {
  if (_input_esc != undefined && !_input_esc) {
    Keyboard.press(global->keymap.map->esc);
  } else {
    Keyboard.press(global->keymap.map->esc);
  }
  if (_input_enter != undefined && !_input_enter) {
    Keyboard.press(global->keymap.map->enter);
  } else {
    Keyboard.press(global->keymap.map->enter);
  }
  if (_input_tab != undefined && !_input_tab) {
    Keyboard.press(global->keymap.map->tab);
  } else {
    Keyboard.press(global->keymap.map->tab);
  }
  if (_input_space != undefined && !_input_space) {
    Keyboard.press(global->keymap.map->space);
  } else {
    Keyboard.press(global->keymap.map->space);
  }
  if (_input_speed_up != undefined && !_input_speed_up) {
    Keyboard.press(global->keymap.map->speedUp);
  } else {
    Keyboard.press(global->keymap.map->speedUp);
  }
  if (_input_speed_down != undefined && !_input_speed_down) {
    Keyboard.press(global->keymap.map->speedDown);
  } else {
    Keyboard.press(global->keymap.map->speedDown);
  }
  if (_input_rewind_key != undefined && !_input_rewind_key) {
    Keyboard.press(global->keymap.map->rewindKey);
  } else {
    Keyboard.press(global->keymap.map->rewindKey);
  }
  if (_input_left_shift != undefined && !_input_left_shift) {
    Keyboard.press(global->keymap.map->leftShift);
  } else {
    Keyboard.press(global->keymap.map->leftShift);
  }
  if (_input_right_shift != undefined && !_input_right_shift) {
    Keyboard.press(global->keymap.map->rightShift);
  } else {
    Keyboard.press(global->keymap.map->rightShift);
  }
  if (_input_arrow_up != undefined && !_input_arrow_up) {
    Keyboard.press(global->keymap.map->arrowUp);
  } else {
    Keyboard.press(global->keymap.map->arrowUp);
  }
  if (_input_arrow_down != undefined && !_input_arrow_down) {
    Keyboard.press(global->keymap.map->arrowDown);
  } else {
    Keyboard.press(global->keymap.map->arrowDown);
  }
  if (_input_arrow_left != undefined && !_input_arrow_left) {
    Keyboard.press(global->keymap.map->arrowLeft);
  } else {
    Keyboard.press(global->keymap.map->arrowLeft);
  }
  if (_input_arrow_right != undefined && !_input_arrow_right) {
    Keyboard.press(global->keymap.map->arrowRight);
  } else {
    Keyboard.press(global->keymap.map->arrowRight);
  }
  if (_input_tune_left_side != undefined && !_input_tune_left_side) {
    Keyboard.press(global->keymap.map->tuneLeftSide);
  } else {
    Keyboard.press(global->keymap.map->tuneLeftSide);
  }
  if (_input_tune_s != undefined && !_input_tune_s) {
    Keyboard.press(global->keymap.map->tuneS);
  } else {
    Keyboard.press(global->keymap.map->tuneS);
  }
  if (_input_tune_d != undefined && !_input_tune_d) {
    Keyboard.press(global->keymap.map->tuneD);
  } else {
    Keyboard.press(global->keymap.map->tuneD);
  }
  if (_input_tune_f != undefined && !_input_tune_f) {
    Keyboard.press(global->keymap.map->tuneF);
  } else {
    Keyboard.press(global->keymap.map->tuneF);
  }
  if (_input_tune_c != undefined && !_input_tune_c) {
    Keyboard.press(global->keymap.map->tuneC);
  } else {
    Keyboard.press(global->keymap.map->tuneC);
  }
  if (_input_tune_m != undefined && !_input_tune_m) {
    Keyboard.press(global->keymap.map->tuneM);
  } else {
    Keyboard.press(global->keymap.map->tuneM);
  }
  if (_input_tune_j != undefined && !_input_tune_j) {
    Keyboard.press(global->keymap.map->tuneJ);
  } else {
    Keyboard.press(global->keymap.map->tuneJ);
  }
  if (_input_tune_k != undefined && !_input_tune_k) {
    Keyboard.press(global->keymap.map->tuneK);
  } else {
    Keyboard.press(global->keymap.map->tuneK);
  }
  if (_input_tune_l != undefined && !_input_tune_l) {
    Keyboard.press(global->keymap.map->tuneL);
  } else {
    Keyboard.press(global->keymap.map->tuneL);
  }
  if (_input_tune_right_side != undefined && !_input_tune_right_side) {
    Keyboard.press(global->keymap.map->tuneRightSide);
  } else {
    Keyboard.press(global->keymap.map->tuneRightSide);
  }
  if (_input_emoticon1 != undefined && !_input_emoticon1) {
    Keyboard.press(global->keymap.map->emoticon1);
  } else {
    Keyboard.press(global->keymap.map->emoticon1);
  }
  if (_input_emoticon2 != undefined && !_input_emoticon2) {
    Keyboard.press(global->keymap.map->emoticon2);
  } else {
    Keyboard.press(global->keymap.map->emoticon2);
  }
  if (_input_emoticon3 != undefined && !_input_emoticon3) {
    Keyboard.press(global->keymap.map->emoticon3);
  } else {
    Keyboard.press(global->keymap.map->emoticon3);
  }
  if (_input_emoticon4 != undefined && !_input_emoticon4) {
    Keyboard.press(global->keymap.map->emoticon4);
  } else {
    Keyboard.press(global->keymap.map->emoticon4);
  }
  if (_input_emoticon5 != undefined && !_input_emoticon5) {
    Keyboard.press(global->keymap.map->emoticon5);
  } else {
    Keyboard.press(global->keymap.map->emoticon5);
  }
}

void onSerialReceived_checkLoadKeyConfig() {}
void onSerialReceived_checkSaveKeyConfig() {}
