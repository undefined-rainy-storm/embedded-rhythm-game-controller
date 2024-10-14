#include <EEPROM.h>

struct DataContainer {
  int field1;
  int field2;
};

DataContainer container = { 1, -1 };
void setup() {
  Serial.begin(9600);
  while (!Serial);

  int eeAddress = 0;

  EEPROM.put(eeAddress, container);

  Serial.println("Container: " + String(container.field1) + " " + String(container.field2));

  container.field1 = -1;
  Serial.println("Container: " + String(container.field1) + " " + String(container.field2));
  container = EEPROM.get(0, container);
  Serial.println("Container: " + String(container.field1) + " " + String(container.field2));
}

void loop() {
}