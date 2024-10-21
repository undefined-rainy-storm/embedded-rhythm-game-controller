#include "const.h"

#ifndef PIN
#define PIN

#define PIN_BUTTON_ESC undefined
#define PIN_BUTTON_ENTER undefined
#define PIN_BUTTON_TAB undefined
#define PIN_BUTTON_SPACE undefined
#define PIN_BUTTON_SPEED_UP undefined
#define PIN_BUTTON_SPEED_DOWN undefined
#define PIN_BUTTON_REWIND_KEY undefined
#define PIN_BUTTON_LEFT_SHIFT undefined
#define PIN_BUTTON_RIGHT_SHIFT undefined
#define PIN_BUTTON_ARROW_UP undefined
#define PIN_BUTTON_ARROW_DOWN undefined
#define PIN_BUTTON_ARROW_LEFT undefined
#define PIN_BUTTON_ARROW_RIGHT undefined
#define PIN_BUTTON_TUNE_LEFT_SIDE 11
#define PIN_BUTTON_TUNE_S 10
#define PIN_BUTTON_TUNE_D 9
#define PIN_BUTTON_TUNE_F 8
#define PIN_BUTTON_TUNE_C 7
#define PIN_BUTTON_TUNE_M 6
#define PIN_BUTTON_TUNE_J 5
#define PIN_BUTTON_TUNE_K 4
#define PIN_BUTTON_TUNE_L 3
#define PIN_BUTTON_TUNE_RIGHT_SIDE 2
#define PIN_BUTTON_EMOTICON1 undefined
#define PIN_BUTTON_EMOTICON2 undefined
#define PIN_BUTTON_EMOTICON3 undefined
#define PIN_BUTTON_EMOTICON4 undefined
#define PIN_BUTTON_EMOTICON5 undefined

#define PIN_DIGITAL_READ(pin) (pin != undefined ? digitalRead(pin) : undefined)

#endif
