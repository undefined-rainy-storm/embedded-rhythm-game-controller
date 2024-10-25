#include "config.h"
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
const char setKeyConfigRequestIncomplete[] = SET_KEY_CONFIG_REQUEST_INCOMPLETE;

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
      Global::getInstance()->serialCommState |= ext_recv | need_clear; // not used completely
    }
    // onLoop_handleSetKeyConfigRequest
    if (equals(incomingBuffer, setKeyConfigRequest, MAGIC_LENGTH)) {
      if (sizeof(incomingBuffer) == MAGIC_LENGTH + KEYMAP_LENGTH) {
        Global::getInstance()->keymap.map->esc = incomingBuffer + MAGIC_LENGTH + 0;
        Global::getInstance()->keymap.map->enter = incomingBuffer + MAGIC_LENGTH + 1;
        Global::getInstance()->keymap.map->tab = incomingBuffer + MAGIC_LENGTH + 2;
        Global::getInstance()->keymap.map->space = incomingBuffer + MAGIC_LENGTH + 3;
        Global::getInstance()->keymap.map->speedUp = incomingBuffer + MAGIC_LENGTH + 4;
        Global::getInstance()->keymap.map->speedDown = incomingBuffer + MAGIC_LENGTH + 5;
        Global::getInstance()->keymap.map->rewindKey = incomingBuffer + MAGIC_LENGTH + 6;
        Global::getInstance()->keymap.map->leftShift = incomingBuffer + MAGIC_LENGTH + 7;
        Global::getInstance()->keymap.map->rightShift = incomingBuffer + MAGIC_LENGTH + 8;
        Global::getInstance()->keymap.map->arrowUp = incomingBuffer + MAGIC_LENGTH + 9;
        Global::getInstance()->keymap.map->arrowDown = incomingBuffer + MAGIC_LENGTH + 10;
        Global::getInstance()->keymap.map->arrowLeft = incomingBuffer + MAGIC_LENGTH + 11;
        Global::getInstance()->keymap.map->arrowRight = incomingBuffer + MAGIC_LENGTH + 12;
        Global::getInstance()->keymap.map->tuneLeftSide = incomingBuffer + MAGIC_LENGTH + 13;
        Global::getInstance()->keymap.map->tuneS = incomingBuffer + MAGIC_LENGTH + 14;
        Global::getInstance()->keymap.map->tuneD = incomingBuffer + MAGIC_LENGTH + 15;
        Global::getInstance()->keymap.map->tuneF = incomingBuffer + MAGIC_LENGTH + 16;
        Global::getInstance()->keymap.map->tuneC = incomingBuffer + MAGIC_LENGTH + 17;
        Global::getInstance()->keymap.map->tuneM = incomingBuffer + MAGIC_LENGTH + 18;
        Global::getInstance()->keymap.map->tuneJ = incomingBuffer + MAGIC_LENGTH + 19;
        Global::getInstance()->keymap.map->tuneK = incomingBuffer + MAGIC_LENGTH + 20;
        Global::getInstance()->keymap.map->tuneL = incomingBuffer + MAGIC_LENGTH + 21;
        Global::getInstance()->keymap.map->tuneRightSide = incomingBuffer + MAGIC_LENGTH + 22;
        Global::getInstance()->keymap.map->emoticon1 = incomingBuffer + MAGIC_LENGTH + 23;
        Global::getInstance()->keymap.map->emoticon2 = incomingBuffer + MAGIC_LENGTH + 24;
        Global::getInstance()->keymap.map->emoticon3 = incomingBuffer + MAGIC_LENGTH + 25;
        Global::getInstance()->keymap.map->emoticon4 = incomingBuffer + MAGIC_LENGTH + 26;
        Global::getInstance()->keymap.map->emoticon5 = incomingBuffer + MAGIC_LENGTH + 27; Serial.write(loadKeyConfigResponse, MAGIC_LENGTH);
        Global::getInstance()->putEEPROM();
        Global::getInstance()->getEEPROM();
        Serial.write(setKeyConfigResponse, MAGIC_LENGTH);
        Serial.write(
          intToUint8(Global::getInstance()->keymap.to_array(), KEYMAP_LENGTH),
        KEYMAP_LENGTH);
      } else {
        Serial.write(setKeyConfigRequestIncomplete, MAGIC_LENGTH);
      }
    }
    // Reset the buffer for the next message
    if (Global::getInstance()->serialCommState & need_clear == need_clear) {
      bytesReceived = 0;
      Global::getInstance()->serialCommState &= ~need_clear;
    }
  }
}
