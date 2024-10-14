// Define the magic request and response configurations
const byte handshakeRequest[] = { 0x2e, 0x68, 0x73, 0x2e, 0x74, 0x72, 0x79, 0x2e, 0x68 };
const byte handshakeResponse[] = { 0x2e, 0x68, 0x73, 0x2e, 0x72, 0x65, 0x73, 0x2e, 0x61 };

const size_t requestLength = sizeof(handshakeRequest);
byte incomingBuffer[requestLength];
size_t bytesReceived = 0;

void setup() {
  Serial.begin(9600); // Ensure this matches the baud rate used in your Flutter app
}

void loop() {
  // Check if data is available on the serial port
  while (Serial.available()) {
    byte incomingByte = Serial.read();
    incomingBuffer[bytesReceived++] = incomingByte;

    // If we've received enough bytes, compare them to the expected request
    if (bytesReceived == requestLength) {
      bool isMatch = true;
      for (size_t i = 0; i < requestLength; i++) {
        if (incomingBuffer[i] != handshakeRequest[i]) {
          isMatch = false;
          break;
        }
      }

      if (isMatch) {
        // Send the response back to the Flutter application
        Serial.write(handshakeResponse, sizeof(handshakeResponse));
      }

      // Reset the buffer for the next message
      bytesReceived = 0;
    }
  }
}
