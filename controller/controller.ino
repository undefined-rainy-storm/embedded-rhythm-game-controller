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
const char setKeyConfigRequest[] = SET_KEY_CONFIG_REQUEST;
const char setKeyConfigResponse[] = SET_KEY_CONFIG_RESPONSE;

byte incomingBuffer[SERIAL_RECEIVE_BUFFER];
size_t bytesReceived = 0;

void setup() {
  Serial.begin(CONFIG_SERIAL_SPEED);
  Global::getInstance();

  onSetup_beginPinModeAsInputPullup();
}

void loop() {
  while (!Serial.available());

  // Pull Button State Trace Handler
  onLoop_handlePullupButtonState();

  // Serial Communication Handler
  byte incomingByte = Serial.read();
  incomingBuffer[bytesReceived++] = incomingByte;

  // Branch Magic
  if (bytesReceived == MAGIC_LENGTH) {
    // onLoop_handleHandshakeRequest
    if (equals(incomingBuffer, handshakeRequest, MAGIC_LENGTH)) {
      Serial.write(handshakeResponse, MAGIC_LENGTH);
      Global::getInstance()->serialCommState |= need_clear;
    }
    // onLoop_handleLoadKeyConfigRequest
    if (equals(incomingBuffer, loadKeyConfigRequest, MAGIC_LENGTH)) {
      Serial.write(loadKeyConfigResponse, MAGIC_LENGTH);
      Serial.write(
        intToUint8(Global::getInstance()->keymap.to_array(), KEYMAP_LENGTH),
      KEYMAP_LENGTH);
      Global::getInstance()->serialCommState |= ext_recv | need_clear;
    }
    // onLoop_handleSetKeyConfigRequest
    if (equals(incomingBuffer, setKeyConfigRequest, MAGIC_LENGTH)) {
      
      // handler
    }
    // Reset the buffer for the next message
    if (Global::getInstance()->serialCommState & need_clear == need_clear) {
      bytesReceived = 0;
      Global::getInstance()->serialCommState &= ~4;
    }
  }
}
