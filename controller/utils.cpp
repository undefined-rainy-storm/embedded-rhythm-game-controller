#include <stddef.h>
#include <stdint.h>

bool equals(const char *a, const char *b, const size_t size) {
  bool _equals = true;
  for (int i = 0; i < size; i++) {
    _equals = _equals && a[i] == b[i];
    if (!_equals) break;
  }
  return _equals;
}

const uint8_t *intToUint8(const int *arr, const size_t size) {
  uint8_t* _return = new uint8_t[size];
  for (int i = 0; i < size; i++) {
    _return[i] = (uint8_t)arr[i];
  }
  return _return;
}
