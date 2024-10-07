#include "keyboard.hpp"

// Initialize the static instance pointer to nullptr
KeyConfig* KeyConfig::instance = nullptr;

// Constructor definition
KeyConfig::KeyConfig(int esc,
                     int enter,
                     int tab,
                     int space,
                     int speedUp,
                     int speedDown,
                     int rewind,
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
      speedUp(speedUp), speedDown(speedDown), rewind(rewind),
      leftShift(leftShift), rightShift(rightShift),
      arrowUp(arrowUp), arrowDown(arrowDown), arrowLeft(arrowLeft), arrowRight(arrowRight),
      tuneLeftSide(tuneLeftSide), tuneS(tuneS), tuneD(tuneD), tuneF(tuneF), 
      tuneC(tuneC), tuneM(tuneM), tuneJ(tuneJ), tuneK(tuneK), tuneL(tuneL),
      tuneRightSide(tuneRightSide),
      emoticon1(emoticon1), emoticon2(emoticon2), emoticon3(emoticon3),
      emoticon4(emoticon4), emoticon5(emoticon5) {}

// Method to get the singleton instance
KeyConfig* KeyConfig::getInstance()
{
  if (instance == nullptr)
  {
    // Create the singleton instance only once
    instance = new KeyConfig(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
  }
  
  return instance;
}
