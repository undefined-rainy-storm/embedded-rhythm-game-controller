#ifndef UTILS
#define UTILS
#include <stddef.h>
#include <stdint.h>

#define isnan(x) (x != x)

/**
 * INT_XXCODE_KV Series is used to exchange keymap data with the host and Arduino.
 * Because there are 28 reserved keys, key data is stored in 5 bits from the rear to the front.
 */
/**
 * Deprecated: Because serial communication uses uint8, this method cannot be used well.
 */
const int dep __attribute__((deprecated)) = 0;
#define INT_ENCODE_KV_OLD(key, value) (key + (value << 5))
#define INT_DECODE_KV_KEY_OLD(code) (code & 31)
#define INT_DECODE_KV_VALUE_OLD(code) (code >> 5)
#define INT_ENCODE_KV(key, value) ((void)dep, INT_DECODE_KV_KEY_OLD(key, value))
#define INT_DECODE_KV_KEY(code) ((void)dep, INT_DECODE_KV_KEY_OLD(key, value))
#define INT_DECODE_KV_VALUE(code) ((void)dep, INT_DECODE_KV_VALUE_OLD(key, value))

bool equals(const char *a, const char *b, const size_t size);

const char *intToUint8(const int *arr, const size_t size);
#endif
