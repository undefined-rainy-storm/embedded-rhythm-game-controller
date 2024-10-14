#include <stddef.h>

bool equals(const char *a, const char *b, const size_t size) {
  bool _equals = true;
  for (int i = 0; i < size; i++) {
    _equals = _equals && a[i] == b[i];
    if (!_equals) break;
  }
  return _equals;
}
