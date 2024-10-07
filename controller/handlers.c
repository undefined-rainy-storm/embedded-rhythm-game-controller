#include <Keyboard.h>
#include "button.h"
#include "keymap.hpp"

void onPress(Button key) {
  switch (key) {
    case esc:
    Keyboard.write(KeyConfig.getInstance->esc);
    break;
    case enter:
    Keyboard.write(KeyConfig.getInstance->enter);
    break;
    case tab:
    Keyboard.write(KeyConfig.getInstance->tab);
    break;
    case space:
    Keyboard.write(KeyConfig.getInstance->space);
    break;
    case speedUp:
    Keyboard.write(KeyConfig.getInstance->speedUp);
    break;
    case speedDown:
    Keyboard.write(KeyConfig.getInstance->speedDown);
    break;
    case rewind:
    Keyboard.write(KeyConfig.getInstance->rewind);
    break;
    case leftShift:
    Keyboard.write(KeyConfig.getInstance->leftShift);
    break;
    case rightShift:
    Keyboard.write(KeyConfig.getInstance->rightShift);
    break;
    case arrowUp:
    Keyboard.write(KeyConfig.getInstance->arrowUp);
    break;
    case arrowDown:
    Keyboard.write(KeyConfig.getInstance->arrowDown);
    break;
    case arrowLeft:
    Keyboard.write(KeyConfig.getInstance->arrowLeft);
    break;
    case arrowRight:
    Keyboard.write(KeyConfig.getInstance->arrowRight);
    break;
    case tuneLeftSide:
    Keyboard.write(KeyConfig.getInstance->tuneLeftSide);
    break;
    case tuneS:
    Keyboard.write(KeyConfig.getInstance->tuneS);
    break;
    case tuneD:
    Keyboard.write(KeyConfig.getInstance->tuneD);
    break;
    case tuneF:
    Keyboard.write(KeyConfig.getInstance->tuneF);
    break;
    case tuneC:
    Keyboard.write(KeyConfig.getInstance->tuneC);
    break;
    case tuneM:
    Keyboard.write(KeyConfig.getInstance->tuneM);
    break;
    case tuneJ:
    Keyboard.write(KeyConfig.getInstance->tuneJ);
    break;
    case tuneK:
    Keyboard.write(KeyConfig.getInstance->tuneK);
    break;
    case tuneL:
    Keyboard.write(KeyConfig.getInstance->tuneL);
    break;
    case tuneRightSide:
    Keyboard.write(KeyConfig.getInstance->tuneRightSide);
    break;
    case emoticon1:
    Keyboard.write(KeyConfig.getInstance->emoticon1);
    break;
    case emoticon2:
    Keyboard.write(KeyConfig.getInstance->emoticon2);
    break;
    case emoticon3:
    Keyboard.write(KeyConfig.getInstance->emoticon3);
    break;
    case emoticon4:
    Keyboard.write(KeyConfig.getInstance->emoticon4);
    break;
    case emoticon5:
    Keyboard.write(KeyConfig.getInstance->emoticon5);
    break;
  }
}
