#include <EEPROM.h>
#include "button_config.h"
#define isnan(x) (x != x)

// Initialize the static instance pointer to nullptr
ButtonConfig* ButtonConfig::instance = nullptr;

// Constructor definition
ButtonConfig::ButtonConfig(int esc,
                     int enter,
                     int tab,
                     int space,
                     int speedUp,
                     int speedDown,
                     int rewindKey,
                     int leftShift,
                     int rightShift,
                     int arrowUp,
                     int arrowDown,
                     int arrowLeft,
                     int arrowRight,
                     int tuneLeftSide,
                     int tuneS,
                     int tuneD,
                     int tuneF,
                     int tuneC,
                     int tuneM,
                     int tuneJ,
                     int tuneK,
                     int tuneL,
                     int tuneRightSide,
                     int emoticon1,
                     int emoticon2,
                     int emoticon3,
                     int emoticon4,
                     int emoticon5)
    : esc(esc), enter(enter), tab(tab), space(space), 
      speedUp(speedUp), speedDown(speedDown), rewindKey(rewindKey),
      leftShift(leftShift), rightShift(rightShift),
      arrowUp(arrowUp), arrowDown(arrowDown), arrowLeft(arrowLeft), arrowRight(arrowRight),
      tuneLeftSide(tuneLeftSide), tuneS(tuneS), tuneD(tuneD), tuneF(tuneF), 
      tuneC(tuneC), tuneM(tuneM), tuneJ(tuneJ), tuneK(tuneK), tuneL(tuneL),
      tuneRightSide(tuneRightSide),
      emoticon1(emoticon1), emoticon2(emoticon2), emoticon3(emoticon3),
      emoticon4(emoticon4), emoticon5(emoticon5) {}

// Method to get the singleton instance
ButtonConfig* ButtonConfig::getInstance()
{
  // Create the singleton instance only once
  if (instance == nullptr)
  {
    struct button_config_struct _button_config_struct;
    EEPROM.get(0, _button_config_struct);
    
    instance = new ButtonConfig(
      (isnan(_button_config_struct.esc) ? _button_config_struct.esc : DEFAULT_KEY_ESC),
      (isnan(_button_config_struct.enter) ? _button_config_struct.enter : DEFAULT_KEY_ENTER),
      (isnan(_button_config_struct.tab) ? _button_config_struct.tab : DEFAULT_KEY_TAB),
      (isnan(_button_config_struct.space) ? _button_config_struct.space : DEFAULT_KEY_SPACE),
      (isnan(_button_config_struct.speedUp) ? _button_config_struct.speedUp : DEFAULT_KEY_SPEEDUP),
      (isnan(_button_config_struct.speedDown) ? _button_config_struct.speedDown : DEFAULT_KEY_SPEEDDOWN),
      (isnan(_button_config_struct.rewindKey) ? _button_config_struct.rewindKey : DEFAULT_KEY_REWINDKEY),
      (isnan(_button_config_struct.leftShift) ? _button_config_struct.leftShift : DEFAULT_KEY_LEFTSHIFT),
      (isnan(_button_config_struct.rightShift) ? _button_config_struct.rightShift : DEFAULT_KEY_RIGHTSHIFT),
      (isnan(_button_config_struct.arrowUp) ? _button_config_struct.arrowUp : DEFAULT_KEY_ARROWUP),
      (isnan(_button_config_struct.arrowDown) ? _button_config_struct.arrowDown : DEFAULT_KEY_ARROWDOWN),
      (isnan(_button_config_struct.arrowLeft) ? _button_config_struct.arrowLeft : DEFAULT_KEY_ARROWLEFT),
      (isnan(_button_config_struct.arrowRight) ? _button_config_struct.arrowRight : DEFAULT_KEY_ARROWRIGHT),
      (isnan(_button_config_struct.tuneLeftSide) ? _button_config_struct.tuneLeftSide : DEFAULT_KEY_TUNELEFTSIDE),
      (isnan(_button_config_struct.tuneS) ? _button_config_struct.tuneS : DEFAULT_KEY_TUNES),
      (isnan(_button_config_struct.tuneD) ? _button_config_struct.tuneD : DEFAULT_KEY_TUNED),
      (isnan(_button_config_struct.tuneF) ? _button_config_struct.tuneF : DEFAULT_KEY_TUNEF),
      (isnan(_button_config_struct.tuneC) ? _button_config_struct.tuneC : DEFAULT_KEY_TUNEC),
      (isnan(_button_config_struct.tuneM) ? _button_config_struct.tuneM : DEFAULT_KEY_TUNEM),
      (isnan(_button_config_struct.tuneJ) ? _button_config_struct.tuneJ : DEFAULT_KEY_TUNEJ),
      (isnan(_button_config_struct.tuneK) ? _button_config_struct.tuneK : DEFAULT_KEY_TUNEK),
      (isnan(_button_config_struct.tuneL) ? _button_config_struct.tuneL : DEFAULT_KEY_TUNEL),
      (isnan(_button_config_struct.tuneRightSide) ? _button_config_struct.tuneRightSide : DEFAULT_KEY_TUNERIGHTSIDE),
      (isnan(_button_config_struct.emoticon1) ? _button_config_struct.emoticon1 : DEFAULT_KEY_EMOTICON1),
      (isnan(_button_config_struct.emoticon2) ? _button_config_struct.emoticon2 : DEFAULT_KEY_EMOTICON2),
      (isnan(_button_config_struct.emoticon3) ? _button_config_struct.emoticon3 : DEFAULT_KEY_EMOTICON3),
      (isnan(_button_config_struct.emoticon4) ? _button_config_struct.emoticon4 : DEFAULT_KEY_EMOTICON4),
      (isnan(_button_config_struct.emoticon5) ? _button_config_struct.emoticon5 : DEFAULT_KEY_EMOTICON5)
    );
  }
  
  return instance;
}
