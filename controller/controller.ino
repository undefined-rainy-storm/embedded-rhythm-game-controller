#include "config.h"
#include "handlers.h"
#include "utils.h"
#include "magic.h"
#include "global.h"
#include "const.h"
#include "pin.h"
#include "handlers.h"

const char handshakeRequest[] = HANDSHAKE_REQUEST;
const char handshakeResponse[] = HANDSHAKE_RESPONSE;
const char loadKeyConfigRequest[] = LOAD_KEY_CONFIG_REQUEST;
const char loadKeyConfigResponse[] = LOAD_KEY_CONFIG_RESPONSE;

byte incomingBuffer[MAGIC_LENGTH];
size_t bytesReceived = 0;

void setup() {
  Serial.begin(CONFIG_SERIAL_SPEED);
  Global::getInstance();

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

void loop() {
  while (!Serial.available());

  // Serial Communication Handler
  byte incomingByte = Serial.read();
  incomingBuffer[bytesReceived++] = incomingByte;

  if (bytesReceived == MAGIC_LENGTH) {
    if (equals(incomingBuffer, handshakeRequest, MAGIC_LENGTH)) {
      Serial.write(handshakeResponse, sizeof(handshakeResponse));
    }
    if (equals(incomingBuffer, loadKeyConfigResponse, MAGIC_LENGTH)) {
      Serial.write(loadKeyConfigResponse, sizeof(loadKeyConfigResponse));
    }
    // Reset the buffer for the next message
    bytesReceived = 0;
  }

  // Button Input Handler
  onButtonDigitalRead_outKeyboardIO(
    PIN_DIGITAL_READ(PIN_BUTTON_ESC),
    PIN_DIGITAL_READ(PIN_BUTTON_ENTER),
    PIN_DIGITAL_READ(PIN_BUTTON_TAB),
    PIN_DIGITAL_READ(PIN_BUTTON_SPACE),
    PIN_DIGITAL_READ(PIN_BUTTON_SPEED_UP),
    PIN_DIGITAL_READ(PIN_BUTTON_SPEED_DOWN),
    PIN_DIGITAL_READ(PIN_BUTTON_REWIND_KEY),
    PIN_DIGITAL_READ(PIN_BUTTON_LEFT_SHIFT),
    PIN_DIGITAL_READ(PIN_BUTTON_RIGHT_SHIFT),
    PIN_DIGITAL_READ(PIN_BUTTON_ARROW_UP),
    PIN_DIGITAL_READ(PIN_BUTTON_ARROW_DOWN),
    PIN_DIGITAL_READ(PIN_BUTTON_ARROW_LEFT),
    PIN_DIGITAL_READ(PIN_BUTTON_ARROW_RIGHT),
    PIN_DIGITAL_READ(PIN_BUTTON_TUNE_LEFT_SIDE),
    PIN_DIGITAL_READ(PIN_BUTTON_TUNE_S),
    PIN_DIGITAL_READ(PIN_BUTTON_TUNE_D),
    PIN_DIGITAL_READ(PIN_BUTTON_TUNE_F),
    PIN_DIGITAL_READ(PIN_BUTTON_TUNE_C),
    PIN_DIGITAL_READ(PIN_BUTTON_TUNE_M),
    PIN_DIGITAL_READ(PIN_BUTTON_TUNE_J),
    PIN_DIGITAL_READ(PIN_BUTTON_TUNE_K),
    PIN_DIGITAL_READ(PIN_BUTTON_TUNE_L),
    PIN_DIGITAL_READ(PIN_BUTTON_TUNE_RIGHT_SIDE),
    PIN_DIGITAL_READ(PIN_BUTTON_EMOTICON1),
    PIN_DIGITAL_READ(PIN_BUTTON_EMOTICON2),
    PIN_DIGITAL_READ(PIN_BUTTON_EMOTICON3),
    PIN_DIGITAL_READ(PIN_BUTTON_EMOTICON4),
    PIN_DIGITAL_READ(PIN_BUTTON_EMOTICON5)
  );  
}
