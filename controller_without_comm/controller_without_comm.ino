#include "config.h"
#include <Keyboard.h>

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
  if (!digitalRead(PIN_BUTTON_TUNE_LEFT_0)) {
    Keyboard.press(KEYBOARD_BUTTON_TUNE_LEFT_0);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_TUNE_LEFT_0);
  }
  if (!digitalRead(PIN_BUTTON_TUNE_LEFT_1)) {
    Keyboard.press(KEYBOARD_BUTTON_TUNE_LEFT_1);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_TUNE_LEFT_1);
  }
  if (!digitalRead(PIN_BUTTON_TUNE_LEFT_2)) {
    Keyboard.press(KEYBOARD_BUTTON_TUNE_LEFT_2);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_TUNE_LEFT_2);
  }
  if (!digitalRead(PIN_BUTTON_TUNE_LEFT_3)) {
    Keyboard.press(KEYBOARD_BUTTON_TUNE_LEFT_3);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_TUNE_LEFT_3);
  }
  if (!digitalRead(PIN_BUTTON_TUNE_LEFT_SIDE)) {
    Keyboard.press(KEYBOARD_BUTTON_TUNE_LEFT_SIDE);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_TUNE_LEFT_SIDE);
  }
  if (!digitalRead(PIN_BUTTON_TUNE_RIGHT_SIDE)) {
    Keyboard.press(KEYBOARD_BUTTON_TUNE_RIGHT_SIDE);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_TUNE_RIGHT_SIDE);
  }
  if (!digitalRead(PIN_BUTTON_TUNE_RIGHT_3)) {
    Keyboard.press(KEYBOARD_BUTTON_TUNE_RIGHT_3);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_TUNE_RIGHT_3);
  }
  if (!digitalRead(PIN_BUTTON_TUNE_RIGHT_2)) {
    Keyboard.press(KEYBOARD_BUTTON_TUNE_RIGHT_2);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_TUNE_RIGHT_2);
  }
  if (!digitalRead(PIN_BUTTON_TUNE_RIGHT_1)) {
    Keyboard.press(KEYBOARD_BUTTON_TUNE_RIGHT_1);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_TUNE_RIGHT_1);
  }
  if (!digitalRead(PIN_BUTTON_TUNE_RIGHT_0)) {
    Keyboard.press(KEYBOARD_BUTTON_TUNE_RIGHT_0);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_TUNE_RIGHT_0);
  }
  if (!digitalRead(PIN_BUTTON_SUB_LEFT_0)) {
    Keyboard.press(KEYBOARD_BUTTON_SUB_LEFT_0);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_SUB_LEFT_0);
  }
  if (!digitalRead(PIN_BUTTON_SUB_LEFT_1)) {
    Keyboard.press(KEYBOARD_BUTTON_SUB_LEFT_1);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_SUB_LEFT_1);
  }
  if (!digitalRead(PIN_BUTTON_SUB_RIGHT_0)) {
    Keyboard.press(KEYBOARD_BUTTON_SUB_RIGHT_0);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_SUB_RIGHT_0);
  }
  if (!digitalRead(PIN_BUTTON_SUB_RIGHT_1)) {
    Keyboard.press(KEYBOARD_BUTTON_SUB_RIGHT_1);
  } else {
    Keyboard.release(KEYBOARD_BUTTON_SUB_RIGHT_1);
  }
}
