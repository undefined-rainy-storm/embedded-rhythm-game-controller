#include "config.h"
#include "handlers.h"
#include "utils.h"
#include "magic.h"
#include "global.h"

const char handshakeRequest[] = HANDSHAKE_REQUEST;
const char handshakeResponse[] = HANDSHAKE_RESPONSE;
const char loadKeyConfigRequest[] = LOAD_KEY_CONFIG_REQUEST;
const char loadKeyConfigResponse[] = LOAD_KEY_CONFIG_RESPONSE;

byte incomingBuffer[MAGIC_LENGTH];
size_t bytesReceived = 0;

void setup() {
  Serial.begin(CONFIG_SERIAL_SPEED);
  Global::getInstance();
}

void loop() {
  while (!Serial.available());

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
}
