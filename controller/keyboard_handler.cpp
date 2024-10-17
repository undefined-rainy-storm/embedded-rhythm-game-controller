#include <Keyboard.h>
#include "pin.h"
#include "keyboard_handler.h"
#include "default.h"
#include "utils.h"
#include "global.h"

int _input_esc;
int _input_enter;
int _input_tab;
int _input_space;
int _input_speed_up;
int _input_speed_down;
int _input_rewind_key;
int _input_left_shift;
int _input_right_shift;
int _input_arrow_up;
int _input_arrow_down;
int _input_arrow_left;
int _input_arrow_right;
int _input_tune_left_side;
int _input_tune_s;
int _input_tune_d;
int _input_tune_f;
int _input_tune_c;
int _input_tune_m;
int _input_tune_j;
int _input_tune_k;
int _input_tune_l;
int _input_tune_right_side;
int _input_emoticon1;
int _input_emoticon2;
int _input_emoticon3;
int _input_emoticon4;
int _input_emoticon5;

Global *global = Global::getInstance();

void onSetup_beginPinModeAsInputPullup() {
  // Begin Button Pin Input
  if (PIN_BUTTON_ESC != undefined) { pinMode(PIN_BUTTON_ESC, INPUT_PULLUP); }
  if (PIN_BUTTON_ENTER != undefined) { pinMode(PIN_BUTTON_ENTER, INPUT_PULLUP); }
  if (PIN_BUTTON_TAB != undefined) { pinMode(PIN_BUTTON_TAB, INPUT_PULLUP); }
  if (PIN_BUTTON_SPACE != undefined) { pinMode(PIN_BUTTON_SPACE, INPUT_PULLUP); }
  if (PIN_BUTTON_SPEED_UP != undefined) { pinMode(PIN_BUTTON_SPEED_UP, INPUT_PULLUP); }
  if (PIN_BUTTON_SPEED_DOWN != undefined) { pinMode(PIN_BUTTON_SPEED_DOWN, INPUT_PULLUP); }
  if (PIN_BUTTON_REWIND_KEY != undefined) { pinMode(PIN_BUTTON_REWIND_KEY, INPUT_PULLUP); }
  if (PIN_BUTTON_LEFT_SHIFT != undefined) { pinMode(PIN_BUTTON_LEFT_SHIFT, INPUT_PULLUP); }
  if (PIN_BUTTON_RIGHT_SHIFT != undefined) { pinMode(PIN_BUTTON_RIGHT_SHIFT, INPUT_PULLUP); }
  if (PIN_BUTTON_ARROW_UP != undefined) { pinMode(PIN_BUTTON_ARROW_UP, INPUT_PULLUP); }
  if (PIN_BUTTON_ARROW_DOWN != undefined) { pinMode(PIN_BUTTON_ARROW_DOWN, INPUT_PULLUP); }
  if (PIN_BUTTON_ARROW_LEFT != undefined) { pinMode(PIN_BUTTON_ARROW_LEFT, INPUT_PULLUP); }
  if (PIN_BUTTON_ARROW_RIGHT != undefined) { pinMode(PIN_BUTTON_ARROW_RIGHT, INPUT_PULLUP); }
  if (PIN_BUTTON_TUNE_LEFT_SIDE != undefined) { pinMode(PIN_BUTTON_TUNE_LEFT_SIDE, INPUT_PULLUP); }
  if (PIN_BUTTON_TUNE_S != undefined) { pinMode(PIN_BUTTON_TUNE_S, INPUT_PULLUP); }
  if (PIN_BUTTON_TUNE_D != undefined) { pinMode(PIN_BUTTON_TUNE_D, INPUT_PULLUP); }
  if (PIN_BUTTON_TUNE_F != undefined) { pinMode(PIN_BUTTON_TUNE_F, INPUT_PULLUP); }
  if (PIN_BUTTON_TUNE_C != undefined) { pinMode(PIN_BUTTON_TUNE_C, INPUT_PULLUP); }
  if (PIN_BUTTON_TUNE_M != undefined) { pinMode(PIN_BUTTON_TUNE_M, INPUT_PULLUP); }
  if (PIN_BUTTON_TUNE_J != undefined) { pinMode(PIN_BUTTON_TUNE_J, INPUT_PULLUP); }
  if (PIN_BUTTON_TUNE_K != undefined) { pinMode(PIN_BUTTON_TUNE_K, INPUT_PULLUP); }
  if (PIN_BUTTON_TUNE_L != undefined) { pinMode(PIN_BUTTON_TUNE_L, INPUT_PULLUP); }
  if (PIN_BUTTON_TUNE_RIGHT_SIDE != undefined) { pinMode(PIN_BUTTON_TUNE_RIGHT_SIDE, INPUT_PULLUP); }
  if (PIN_BUTTON_EMOTICON1 != undefined) { pinMode(PIN_BUTTON_EMOTICON1, INPUT_PULLUP); }
  if (PIN_BUTTON_EMOTICON2 != undefined) { pinMode(PIN_BUTTON_EMOTICON2, INPUT_PULLUP); }
  if (PIN_BUTTON_EMOTICON3 != undefined) { pinMode(PIN_BUTTON_EMOTICON3, INPUT_PULLUP); }
  if (PIN_BUTTON_EMOTICON4 != undefined) { pinMode(PIN_BUTTON_EMOTICON4, INPUT_PULLUP); }
  if (PIN_BUTTON_EMOTICON5 != undefined) { pinMode(PIN_BUTTON_EMOTICON5, INPUT_PULLUP); }
}

void onLoop_handlePullupButtonState() {
  _input_esc = PIN_DIGITAL_READ(PIN_BUTTON_ESC);
  _input_enter = PIN_DIGITAL_READ(PIN_BUTTON_ENTER);
  _input_tab = PIN_DIGITAL_READ(PIN_BUTTON_TAB);
  _input_space = PIN_DIGITAL_READ(PIN_BUTTON_SPACE);
  _input_speed_up = PIN_DIGITAL_READ(PIN_BUTTON_SPEED_UP);
  _input_speed_down = PIN_DIGITAL_READ(PIN_BUTTON_SPEED_DOWN);
  _input_rewind_key = PIN_DIGITAL_READ(PIN_BUTTON_REWIND_KEY);
  _input_left_shift = PIN_DIGITAL_READ(PIN_BUTTON_LEFT_SHIFT);
  _input_right_shift = PIN_DIGITAL_READ(PIN_BUTTON_RIGHT_SHIFT);
  _input_arrow_up = PIN_DIGITAL_READ(PIN_BUTTON_ARROW_UP);
  _input_arrow_down = PIN_DIGITAL_READ(PIN_BUTTON_ARROW_DOWN);
  _input_arrow_left = PIN_DIGITAL_READ(PIN_BUTTON_ARROW_LEFT);
  _input_arrow_right = PIN_DIGITAL_READ(PIN_BUTTON_ARROW_RIGHT);
  _input_tune_left_side = PIN_DIGITAL_READ(PIN_BUTTON_TUNE_LEFT_SIDE);
  _input_tune_s = PIN_DIGITAL_READ(PIN_BUTTON_TUNE_S);
  _input_tune_d = PIN_DIGITAL_READ(PIN_BUTTON_TUNE_D);
  _input_tune_f = PIN_DIGITAL_READ(PIN_BUTTON_TUNE_F);
  _input_tune_c = PIN_DIGITAL_READ(PIN_BUTTON_TUNE_C);
  _input_tune_m = PIN_DIGITAL_READ(PIN_BUTTON_TUNE_M);
  _input_tune_j = PIN_DIGITAL_READ(PIN_BUTTON_TUNE_J);
  _input_tune_k = PIN_DIGITAL_READ(PIN_BUTTON_TUNE_K);
  _input_tune_l = PIN_DIGITAL_READ(PIN_BUTTON_TUNE_L);
  _input_tune_right_side = PIN_DIGITAL_READ(PIN_BUTTON_TUNE_RIGHT_SIDE);
  _input_emoticon1 = PIN_DIGITAL_READ(PIN_BUTTON_EMOTICON1);
  _input_emoticon2 = PIN_DIGITAL_READ(PIN_BUTTON_EMOTICON2);
  _input_emoticon3 = PIN_DIGITAL_READ(PIN_BUTTON_EMOTICON3);
  _input_emoticon4 = PIN_DIGITAL_READ(PIN_BUTTON_EMOTICON4);
  _input_emoticon5 = PIN_DIGITAL_READ(PIN_BUTTON_EMOTICON5);

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
