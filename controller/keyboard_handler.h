#include <Keyboard.h>
#include "pin.h"
#include "default.h"

#ifndef KEYBOARD_HANDLER
#define KEYBOARD_HANDLER

void onSetup_beginPinModeAsInputPullup();
void onLoop_handlePullupButtonState();

#endif
