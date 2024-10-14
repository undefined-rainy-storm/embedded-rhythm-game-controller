/*
#include <Keyboard.h>
#include "button.h"
#include "button_config.h"

void onPress(Button key) {
  Keyboard.begin();
  switch (key) {
    case esc:
    Keyboard.write(ButtonConfig::getInstance()->esc);
    break;
    case enter:
    Keyboard.write(ButtonConfig::getInstance()->enter);
    break;
    case tab:
    Keyboard.write(ButtonConfig::getInstance()->tab);
    break;
    case space:
    Keyboard.write(ButtonConfig::getInstance()->space);
    break;
    case speed_up:
    Keyboard.write(ButtonConfig::getInstance()->speedUp);
    break;
    case speed_down:
    Keyboard.write(ButtonConfig::getInstance()->speedDown);
    break;
    case rewind_key:
    Keyboard.write(ButtonConfig::getInstance()->rewindKey);
    break;
    case left_shift:
    Keyboard.write(ButtonConfig::getInstance()->leftShift);
    break;
    case right_shift:
    Keyboard.write(ButtonConfig::getInstance()->rightShift);
    break;
    case arrow_up:
    Keyboard.write(ButtonConfig::getInstance()->arrowUp);
    break;
    case arrow_down:
    Keyboard.write(ButtonConfig::getInstance()->arrowDown);
    break;
    case arrow_left:
    Keyboard.write(ButtonConfig::getInstance()->arrowLeft);
    break;
    case arrow_right:
    Keyboard.write(ButtonConfig::getInstance()->arrowRight);
    break;
    case tune_left_side:
    Keyboard.write(ButtonConfig::getInstance()->tuneLeftSide);
    break;
    case tune_s:
    Keyboard.write(ButtonConfig::getInstance()->tuneS);
    break;
    case tune_d:
    Keyboard.write(ButtonConfig::getInstance()->tuneD);
    break;
    case tune_f:
    Keyboard.write(ButtonConfig::getInstance()->tuneF);
    break;
    case tune_c:
    Keyboard.write(ButtonConfig::getInstance()->tuneC);
    break;
    case tune_m:
    Keyboard.write(ButtonConfig::getInstance()->tuneM);
    break;
    case tune_j:
    Keyboard.write(ButtonConfig::getInstance()->tuneJ);
    break;
    case tune_k:
    Keyboard.write(ButtonConfig::getInstance()->tuneK);
    break;
    case tune_l:
    Keyboard.write(ButtonConfig::getInstance()->tuneL);
    break;
    case tune_right_side:
    Keyboard.write(ButtonConfig::getInstance()->tuneRightSide);
    break;
    case emoticon1:
    Keyboard.write(ButtonConfig::getInstance()->emoticon1);
    break;
    case emoticon2:
    Keyboard.write(ButtonConfig::getInstance()->emoticon2);
    break;
    case emoticon3:
    Keyboard.write(ButtonConfig::getInstance()->emoticon3);
    break;
    case emoticon4:
    Keyboard.write(ButtonConfig::getInstance()->emoticon4);
    break;
    case emoticon5:
    Keyboard.write(ButtonConfig::getInstance()->emoticon5);
    break;
  }
  Keyboard.releaseAll();
}
*/

void onSerialReceived_checkHandShake() {
}

void onSerialReceived_checkLoadKeyConfig() {}
void onSerialReceived_checkSaveKeyConfig() {}
