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

bool _pressed_esc = false;
bool _pressed_enter = false;
bool _pressed_tab = false;
bool _pressed_space = false;
bool _pressed_speed_up = false;
bool _pressed_speed_down = false;
bool _pressed_rewind_key = false;
bool _pressed_left_shift = false;
bool _pressed_right_shift = false;
bool _pressed_arrow_up = false;
bool _pressed_arrow_down = false;
bool _pressed_arrow_left = false;
bool _pressed_arrow_right = false;
bool _pressed_tune_left_side = false;
bool _pressed_tune_s = false;
bool _pressed_tune_d = false;
bool _pressed_tune_f = false;
bool _pressed_tune_c = false;
bool _pressed_tune_m = false;
bool _pressed_tune_j = false;
bool _pressed_tune_k = false;
bool _pressed_tune_l = false;
bool _pressed_tune_right_side = false;
bool _pressed_emoticon1 = false;
bool _pressed_emoticon2 = false;
bool _pressed_emoticon3 = false;
bool _pressed_emoticon4 = false;
bool _pressed_emoticon5 = false;

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

inline void _changeKeyPressState(bool input, bool &pressed, int key) {
  if (input && !pressed) {
    Keyboard.press(key);
    pressed = true;
  } else if (!input && pressed) {
    Keyboard.release(key);
    pressed = false;
  }
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

  _input_esc = _input_esc != undefined ? !_input_esc : 0;
  _input_enter = _input_enter != undefined ? !_input_enter : 0;
  _input_tab = _input_tab != undefined ? !_input_tab : 0;
  _input_space = _input_space != undefined ? !_input_space : 0;
  _input_speed_up = _input_speed_up != undefined ? !_input_speed_up : 0;
  _input_speed_down = _input_speed_down != undefined ? !_input_speed_down : 0;
  _input_rewind_key = _input_rewind_key != undefined ? !_input_rewind_key : 0;
  _input_left_shift = _input_left_shift != undefined ? !_input_left_shift : 0;
  _input_right_shift = _input_right_shift != undefined ? !_input_right_shift : 0;
  _input_arrow_up = _input_arrow_up != undefined ? !_input_arrow_up : 0;
  _input_arrow_down = _input_arrow_down != undefined ? !_input_arrow_down : 0;
  _input_arrow_left = _input_arrow_left != undefined ? !_input_arrow_left : 0;
  _input_arrow_right = _input_arrow_right != undefined ? !_input_arrow_right : 0;
  _input_tune_left_side = _input_tune_left_side != undefined ? !_input_tune_left_side : 0;
  _input_tune_s = _input_tune_s != undefined ? !_input_tune_s : 0;
  _input_tune_d = _input_tune_d != undefined ? !_input_tune_d : 0;
  _input_tune_f = _input_tune_f != undefined ? !_input_tune_f : 0;
  _input_tune_c = _input_tune_c != undefined ? !_input_tune_c : 0;
  _input_tune_m = _input_tune_m != undefined ? !_input_tune_m : 0;
  _input_tune_j = _input_tune_j != undefined ? !_input_tune_j : 0;
  _input_tune_k = _input_tune_k != undefined ? !_input_tune_k : 0;
  _input_tune_l = _input_tune_l != undefined ? !_input_tune_l : 0;
  _input_tune_right_side = _input_tune_right_side != undefined ? !_input_tune_right_side : 0;
  _input_emoticon1 = _input_emoticon1 != undefined ? !_input_emoticon1 : 0;
  _input_emoticon2 = _input_emoticon2 != undefined ? !_input_emoticon2 : 0;
  _input_emoticon3 = _input_emoticon3 != undefined ? !_input_emoticon3 : 0;
  _input_emoticon4 = _input_emoticon4 != undefined ? !_input_emoticon4 : 0;
  _input_emoticon5 = _input_emoticon5 != undefined ? !_input_emoticon5 : 0;

  _changeKeyPressState(_input_esc, _pressed_esc, global->keymap.map->esc);
  _changeKeyPressState(_input_enter, _pressed_enter, global->keymap.map->enter);
  _changeKeyPressState(_input_tab, _pressed_tab, global->keymap.map->tab);
  _changeKeyPressState(_input_space, _pressed_space, global->keymap.map->space);
  _changeKeyPressState(_input_speed_up, _pressed_speed_up, global->keymap.map->speedUp);
  _changeKeyPressState(_input_speed_down, _pressed_speed_down, global->keymap.map->speedDown);
  _changeKeyPressState(_input_rewind_key, _pressed_rewind_key, global->keymap.map->rewindKey);
  _changeKeyPressState(_input_left_shift, _pressed_left_shift, global->keymap.map->leftShift);
  _changeKeyPressState(_input_right_shift, _pressed_right_shift, global->keymap.map->rightShift);
  _changeKeyPressState(_input_arrow_up, _pressed_arrow_up, global->keymap.map->arrowUp);
  _changeKeyPressState(_input_arrow_down, _pressed_arrow_down, global->keymap.map->arrowDown);
  _changeKeyPressState(_input_arrow_left, _pressed_arrow_left, global->keymap.map->arrowLeft);
  _changeKeyPressState(_input_arrow_right, _pressed_arrow_right, global->keymap.map->arrowRight);
  _changeKeyPressState(_input_tune_left_side, _pressed_tune_left_side, global->keymap.map->tuneLeftSide);
  _changeKeyPressState(_input_tune_s, _pressed_tune_s, global->keymap.map->tuneS);
  _changeKeyPressState(_input_tune_d, _pressed_tune_d, global->keymap.map->tuneD);
  _changeKeyPressState(_input_tune_f, _pressed_tune_f, global->keymap.map->tuneF);
  _changeKeyPressState(_input_tune_c, _pressed_tune_c, global->keymap.map->tuneC);
  _changeKeyPressState(_input_tune_m, _pressed_tune_m, global->keymap.map->tuneM);
  _changeKeyPressState(_input_tune_j, _pressed_tune_j, global->keymap.map->tuneJ);
  _changeKeyPressState(_input_tune_k, _pressed_tune_k, global->keymap.map->tuneK);
  _changeKeyPressState(_input_tune_l, _pressed_tune_l, global->keymap.map->tuneL);
  _changeKeyPressState(_input_tune_right_side, _pressed_tune_right_side, global->keymap.map->tuneRightSide);
  _changeKeyPressState(_input_emoticon1, _pressed_emoticon1, global->keymap.map->emoticon1);
  _changeKeyPressState(_input_emoticon2, _pressed_emoticon2, global->keymap.map->emoticon2);
  _changeKeyPressState(_input_emoticon3, _pressed_emoticon3, global->keymap.map->emoticon3);
  _changeKeyPressState(_input_emoticon4, _pressed_emoticon4, global->keymap.map->emoticon4);
  _changeKeyPressState(_input_emoticon5, _pressed_emoticon5, global->keymap.map->emoticon5);
}
