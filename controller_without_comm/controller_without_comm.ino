#include "config.h"
#include <Keyboard.h>

bool pressed_button_tune_left_0 = false;
bool pressed_button_tune_left_1 = false;
bool pressed_button_tune_left_2 = false;
bool pressed_button_tune_left_3 = false;
bool pressed_button_tune_left_side = false;
bool pressed_button_tune_right_side = false;
bool pressed_button_tune_right_3 = false;
bool pressed_button_tune_right_2 = false;
bool pressed_button_tune_right_1 = false;
bool pressed_button_tune_right_0 = false;
bool pressed_button_sub_left_0 = false;
bool pressed_button_sub_left_1 = false;
bool pressed_button_sub_right_0 = false;
bool pressed_button_sub_right_1 = false;

void setup() {
  pinMode(PIN_BUTTON_TUNE_LEFT_0, INPUT_PULLUP);
  pinMode(PIN_BUTTON_TUNE_LEFT_1, INPUT_PULLUP);
  pinMode(PIN_BUTTON_TUNE_LEFT_2, INPUT_PULLUP);
  pinMode(PIN_BUTTON_TUNE_LEFT_3, INPUT_PULLUP);
  pinMode(PIN_BUTTON_TUNE_LEFT_SIDE, INPUT_PULLUP);
  pinMode(PIN_BUTTON_TUNE_RIGHT_SIDE, INPUT_PULLUP);
  pinMode(PIN_BUTTON_TUNE_RIGHT_3, INPUT_PULLUP);
  pinMode(PIN_BUTTON_TUNE_RIGHT_2, INPUT_PULLUP);
  pinMode(PIN_BUTTON_TUNE_RIGHT_1, INPUT_PULLUP);
  pinMode(PIN_BUTTON_TUNE_RIGHT_0, INPUT_PULLUP);
  pinMode(PIN_BUTTON_SUB_LEFT_0, INPUT_PULLUP);
  pinMode(PIN_BUTTON_SUB_LEFT_1, INPUT_PULLUP);
  pinMode(PIN_BUTTON_SUB_RIGHT_0, INPUT_PULLUP);
  pinMode(PIN_BUTTON_SUB_RIGHT_1, INPUT_PULLUP);
}

void loop() {
  if (!digitalRead(PIN_BUTTON_DUPLICATED_UPARROW)) {
    Keyboard.write(KEYBOARD_BUTTON_DUPLICATED_UPARROW);
  }
  if (!digitalRead(PIN_BUTTON_DUPLICATED_DOWNARROW)) {
    Keyboard.write(KEYBOARD_BUTTON_DUPLICATED_DOWNARROW);
  }
  if (!digitalRead(PIN_BUTTON_DUPLICATED_LEFTARROW)) {
    Keyboard.write(KEYBOARD_BUTTON_DUPLICATED_LEFTARROW);
  }
  if (!digitalRead(PIN_BUTTON_DUPLICATED_RIGHTARROW)) {
    Keyboard.write(KEYBOARD_BUTTON_DUPLICATED_RIGHTARROW);
  }
  
  if (!digitalRead(PIN_BUTTON_TUNE_LEFT_0)) {
    if (!pressed_button_tune_left_0) {
      pressed_button_tune_left_0 = true;
      Keyboard.press(KEYBOARD_BUTTON_TUNE_LEFT_0);
    }
  } else {
    if (pressed_button_tune_left_0) {
      pressed_button_tune_left_0 = false;
      Keyboard.release(KEYBOARD_BUTTON_TUNE_LEFT_0);
    }
  }
  if (!digitalRead(PIN_BUTTON_TUNE_LEFT_1)) {
    if (!pressed_button_tune_left_1) {
      pressed_button_tune_left_1 = true;
      Keyboard.press(KEYBOARD_BUTTON_TUNE_LEFT_1);
    }
  } else {
    if (pressed_button_tune_left_1) {
      pressed_button_tune_left_1 = false;
      Keyboard.release(KEYBOARD_BUTTON_TUNE_LEFT_1);
    }
  }
  if (!digitalRead(PIN_BUTTON_TUNE_LEFT_2)) {
    if (!pressed_button_tune_left_2) {
      pressed_button_tune_left_2 = true;
      Keyboard.press(KEYBOARD_BUTTON_TUNE_LEFT_2);
    }
  } else {
    if (pressed_button_tune_left_2) {
      pressed_button_tune_left_2 = false;
      Keyboard.release(KEYBOARD_BUTTON_TUNE_LEFT_2);
    }
  }
  if (!digitalRead(PIN_BUTTON_TUNE_LEFT_3)) {
    if (!pressed_button_tune_left_3) {
      pressed_button_tune_left_3 = true;
      Keyboard.press(KEYBOARD_BUTTON_TUNE_LEFT_3);
    }
  } else {
    if (pressed_button_tune_left_3) {
      pressed_button_tune_left_3 = false;
      Keyboard.release(KEYBOARD_BUTTON_TUNE_LEFT_3);
    }
  }
  if (!digitalRead(PIN_BUTTON_TUNE_LEFT_SIDE)) {
    if (!pressed_button_tune_left_side) {
      pressed_button_tune_left_side = true;
      Keyboard.press(KEYBOARD_BUTTON_TUNE_LEFT_SIDE);
    }
  } else {
    if (pressed_button_tune_left_side) {
      pressed_button_tune_left_side = false;
      Keyboard.release(KEYBOARD_BUTTON_TUNE_LEFT_SIDE);
    }
  }
  if (!digitalRead(PIN_BUTTON_TUNE_RIGHT_SIDE)) {
    if (!pressed_button_tune_right_side) {
      pressed_button_tune_right_side = true;
      Keyboard.press(KEYBOARD_BUTTON_TUNE_RIGHT_SIDE);
    }
  } else {
    if (pressed_button_tune_right_side) {
      pressed_button_tune_right_side = false;
      Keyboard.release(KEYBOARD_BUTTON_TUNE_RIGHT_SIDE);
    }
  }
  if (!digitalRead(PIN_BUTTON_TUNE_RIGHT_3)) {
    if (!pressed_button_tune_right_3) {
      pressed_button_tune_right_3 = true;
      Keyboard.press(KEYBOARD_BUTTON_TUNE_RIGHT_3);
    }
  } else {
    if (pressed_button_tune_right_3) {
      pressed_button_tune_right_3 = false;
      Keyboard.release(KEYBOARD_BUTTON_TUNE_RIGHT_3);
    }
  }
  if (!digitalRead(PIN_BUTTON_TUNE_RIGHT_2)) {
    if (!pressed_button_tune_right_2) {
      pressed_button_tune_right_2 = true;
      Keyboard.press(KEYBOARD_BUTTON_TUNE_RIGHT_2);
    }
  } else {
    if (pressed_button_tune_right_2) {
      pressed_button_tune_right_2 = false;
      Keyboard.release(KEYBOARD_BUTTON_TUNE_RIGHT_2);
    }
  }
  if (!digitalRead(PIN_BUTTON_TUNE_RIGHT_1)) {
    if (!pressed_button_tune_right_1) {
      pressed_button_tune_right_1 = true;
      Keyboard.press(KEYBOARD_BUTTON_TUNE_RIGHT_1);
    }
  } else {
    if (pressed_button_tune_right_1) {
      pressed_button_tune_right_1 = false;
      Keyboard.release(KEYBOARD_BUTTON_TUNE_RIGHT_1);
    }
  }
  if (!digitalRead(PIN_BUTTON_TUNE_RIGHT_0)) {
    if (!pressed_button_tune_right_0) {
      pressed_button_tune_right_0 = true;
      Keyboard.press(KEYBOARD_BUTTON_TUNE_RIGHT_0);
    }
  } else {
    if (pressed_button_tune_right_0) {
      pressed_button_tune_right_0 = false;
      Keyboard.release(KEYBOARD_BUTTON_TUNE_RIGHT_0);
    }
  }
  if (!digitalRead(PIN_BUTTON_SUB_LEFT_0)) {
    if (!pressed_button_sub_left_0) {
      pressed_button_sub_left_0 = true;
      Keyboard.press(KEYBOARD_BUTTON_SUB_LEFT_0);
    }
  } else {
    if (pressed_button_sub_left_0) {
      pressed_button_sub_left_0 = false;
      Keyboard.release(KEYBOARD_BUTTON_SUB_LEFT_0);
    }
  }
  if (!digitalRead(PIN_BUTTON_SUB_LEFT_1)) {
    if (!pressed_button_sub_left_1) {
      pressed_button_sub_left_1 = true;
      Keyboard.press(KEYBOARD_BUTTON_SUB_LEFT_1);
    }
  } else {
    if (pressed_button_sub_left_1) {
      pressed_button_sub_left_1 = false;
      Keyboard.release(KEYBOARD_BUTTON_SUB_LEFT_1);
    }
  }
  if (!digitalRead(PIN_BUTTON_SUB_RIGHT_0)) {
    if (!pressed_button_sub_right_0) {
      pressed_button_sub_right_0 = true;
      Keyboard.press(KEYBOARD_BUTTON_SUB_RIGHT_0);
    }
  } else {
    if (pressed_button_sub_right_0) {
      pressed_button_sub_right_0 = false;
      Keyboard.release(KEYBOARD_BUTTON_SUB_RIGHT_0);
    }
  }
  if (!digitalRead(PIN_BUTTON_SUB_RIGHT_1)) {
    if (!pressed_button_sub_right_1) {
      pressed_button_sub_right_1 = true;
      Keyboard.press(KEYBOARD_BUTTON_SUB_RIGHT_1);
    }
  } else {
    if (pressed_button_sub_right_1) {
      pressed_button_sub_right_1 = false;
      Keyboard.release(KEYBOARD_BUTTON_SUB_RIGHT_1);
    }
  }
}
