/**
 * Controller Verify
 * 
 * This can be used to verify wire connection or well-assembled.
 * 
 * Checklist
 * 1. Is it well compiled and uploaded to the selected Arduino board?
 * 2. Are all buttons well recognized pressed or not?
 * 3. Can Arduino send keyboard input?
 *   Send 'k' character to Arduino through the serial monitor. (COMMAND_INVOKE_VERIFY_KEYBOARD)
 *   Then check the result through the serial monitor and keyboard output.
 * 4. Can Arduino save data?
 *   Send 'e' character to Arduino through the serial monitor. (COMMAND_INVOKE_VERIFY_EEPROM)
 *   Then check the result through the serial monitor.
 */

#define SERIAL_SPEED    9600
#define VERIFY_EEPROM   true
#define VERIFY_KEYBOARD true

#define INPUT_CHAR_ON_VERIFY_KEYBOARD 'a'
#define PRESSING_TICK_ON_VERIFY_KEYBOARD 500
#define COMMAND_INVOKE_VERIFY_KEYBOARD 'k'
#define COMMAND_INVOKE_VERIFY_EEPROM 'e'

#if VERIFY_EEPROM
#include <EEPROM.h>
#endif
#if VERIFY_KEYBOARD
#include <Keyboard.h>
#endif

int pressingTick = 0;

void setup() {
  #if VERIFY_KEYBOARD
  Keyboard.begin();
  #endif

  Serial.begin(SERIAL_SPEED);
  pinMode(0, INPUT_PULLUP);
  pinMode(1, INPUT_PULLUP);
  pinMode(2, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
  pinMode(4, INPUT_PULLUP);
  pinMode(5, INPUT_PULLUP);
  pinMode(6, INPUT_PULLUP);
  pinMode(7, INPUT_PULLUP);
  pinMode(8, INPUT_PULLUP);
  pinMode(9, INPUT_PULLUP);
  pinMode(10, INPUT_PULLUP);
  while(!Serial);
  Serial.println("[Serial] Serial communication has been started.");
}

void loop() {
  #if VERIFY_KEYBOARD
  if (pressingTick--) {
    Keyboard.release(INPUT_CHAR_ON_VERIFY_KEYBOARD);
  }
  #endif
  
  char received = Serial.read();
  if (received == COMMAND_INVOKE_VERIFY_EEPROM) {
    verifyEEPROM();
  }
  if (received == COMMAND_INVOKE_VERIFY_KEYBOARD) {
    invokeVerifyKeyboard();
  }

  if (!digitalRead(0)) Serial.println("[Button] Button 0 has been pressed.");
  if (!digitalRead(1)) Serial.println("[Button] Button 1 has been pressed.");
  if (!digitalRead(2)) Serial.println("[Button] Button 2 has been pressed.");
  if (!digitalRead(3)) Serial.println("[Button] Button 3 has been pressed.");
  if (!digitalRead(4)) Serial.println("[Button] Button 4 has been pressed.");
  if (!digitalRead(5)) Serial.println("[Button] Button 5 has been pressed.");
  if (!digitalRead(6)) Serial.println("[Button] Button 6 has been pressed.");
  if (!digitalRead(7)) Serial.println("[Button] Button 7 has been pressed.");
  if (!digitalRead(8)) Serial.println("[Button] Button 8 has been pressed.");
  if (!digitalRead(9)) Serial.println("[Button] Button 9 has been pressed.");
}

void invokeVerifyKeyboard() {
  #if VERIFY_KEYBOARD
  Keyboard.write(INPUT_CHAR_ON_VERIFY_KEYBOARD);
  Serial.print("[Keyboard] `");
  Serial.print(INPUT_CHAR_ON_VERIFY_KEYBOARD);
  Serial.println("` has been wrote.");

  pressingTick = PRESSING_TICK_ON_VERIFY_KEYBOARD;
  Serial.print("[Keyboard] `");
  Serial.print(INPUT_CHAR_ON_VERIFY_KEYBOARD);
  Serial.print("` will be pressed for ");
  Serial.print(pressingTick);
  Serial.println("ticks.");
  Keyboard.press(INPUT_CHAR_ON_VERIFY_KEYBOARD);
  #else
  Serial.println("[Keyboard] Keyboard verification has been disabled.");
  #endif
}

void verifyEEPROM() {
  const int origin = 1;
  const int address = 0;

  #if VERIFY_EEPROM
  int var = origin;
  Serial.print("[EEPROM] Variable is ");
  Serial.print(var);
  Serial.println(".");

  EEPROM.put(address, var);
  Serial.println("[EEPROM] Variable has been saved to EEPROM.");

  var = -1;
  Serial.print("[EEPROM] Variable has been changed to ");
  Serial.print(var);
  Serial.println(".");

  EEPROM.get(address, var);
  Serial.println("[EEPROM] Variable has been loaded from EEPROM.");
  
  Serial.print("[EEPROM] Verify ");
  Serial.print(var == origin ? "passed" : "failed");
  Serial.print(": `");
  Serial.print(origin);
  Serial.print("` Expected, ");
  Serial.print("`");
  Serial.print(var);
  Serial.println("` Found.");
  #else
  Serial.println("[EEPROM] EEPROM verification has been disabled.");
  #endif
}
