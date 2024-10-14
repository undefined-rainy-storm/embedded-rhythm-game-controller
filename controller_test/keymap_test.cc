#include <gtest/gtest.h>
#include "keymap.h"
#include "default.h"

class KeymapTest : public testing::Test {};

TEST(KeymapTest, CheckDefaultKeymapWellMapped) {
  keymap_t keymap;
  keymap.esc = DEFAULT_KEY_ESC;
  keymap.enter = DEFAULT_KEY_ENTER;
  keymap.tab = DEFAULT_KEY_TAB ;
  keymap.space = DEFAULT_KEY_SPACE;
  keymap.speedUp = DEFAULT_KEY_SPEEDUP;
  keymap.speedDown = DEFAULT_KEY_SPEEDDOWN;
  keymap.rewindKey = DEFAULT_KEY_REWINDKEY;
  keymap.leftShift = DEFAULT_KEY_LEFTSHIFT;
  keymap.rightShift = DEFAULT_KEY_RIGHTSHIFT;
  keymap.arrowUp = DEFAULT_KEY_ARROWUP;
  keymap.arrowDown = DEFAULT_KEY_ARROWDOWN;
  keymap.arrowLeft = DEFAULT_KEY_ARROWLEFT;
  keymap.arrowRight = DEFAULT_KEY_ARROWRIGHT;
  keymap.tuneLeftSide = DEFAULT_KEY_TUNELEFTSIDE;
  keymap.tuneS = DEFAULT_KEY_TUNES;
  keymap.tuneD = DEFAULT_KEY_TUNED;
  keymap.tuneF = DEFAULT_KEY_TUNEF;
  keymap.tuneC = DEFAULT_KEY_TUNEC;
  keymap.tuneM = DEFAULT_KEY_TUNEM;
  keymap.tuneJ = DEFAULT_KEY_TUNEJ;
  keymap.tuneK = DEFAULT_KEY_TUNEK;
  keymap.tuneL = DEFAULT_KEY_TUNEL;
  keymap.tuneRightSide = DEFAULT_KEY_TUNERIGHTSIDE;
  keymap.emoticon1 = DEFAULT_KEY_EMOTICON1;
  keymap.emoticon2 = DEFAULT_KEY_EMOTICON2;
  keymap.emoticon3 = DEFAULT_KEY_EMOTICON3;
  keymap.emoticon4 = DEFAULT_KEY_EMOTICON4;
  keymap.emoticon5 = DEFAULT_KEY_EMOTICON5;
  KeymapConfig keymapConfig = KeymapConfig(&keymap);
  int *arr = keymapConfig.to_array();
  EXPECT_EQ(arr[0], DEFAULT_KEY_ESC);
  EXPECT_EQ(arr[1], DEFAULT_KEY_ENTER);
  EXPECT_EQ(arr[2], DEFAULT_KEY_TAB);
  EXPECT_EQ(arr[3], DEFAULT_KEY_SPACE);
  EXPECT_EQ(arr[4], DEFAULT_KEY_SPEEDUP);
  EXPECT_EQ(arr[5], DEFAULT_KEY_SPEEDDOWN);
  EXPECT_EQ(arr[6], DEFAULT_KEY_REWINDKEY);
  EXPECT_EQ(arr[7], DEFAULT_KEY_LEFTSHIFT);
  EXPECT_EQ(arr[8], DEFAULT_KEY_RIGHTSHIFT);
  EXPECT_EQ(arr[9], DEFAULT_KEY_ARROWUP);
  EXPECT_EQ(arr[10], DEFAULT_KEY_ARROWDOWN);
  EXPECT_EQ(arr[11], DEFAULT_KEY_ARROWLEFT);
  EXPECT_EQ(arr[12], DEFAULT_KEY_ARROWRIGHT);
  EXPECT_EQ(arr[13], DEFAULT_KEY_TUNELEFTSIDE);
  EXPECT_EQ(arr[14], DEFAULT_KEY_TUNES);
  EXPECT_EQ(arr[15], DEFAULT_KEY_TUNED);
  EXPECT_EQ(arr[16], DEFAULT_KEY_TUNEF);
  EXPECT_EQ(arr[17], DEFAULT_KEY_TUNEC);
  EXPECT_EQ(arr[18], DEFAULT_KEY_TUNEM);
  EXPECT_EQ(arr[19], DEFAULT_KEY_TUNEJ);
  EXPECT_EQ(arr[20], DEFAULT_KEY_TUNEK);
  EXPECT_EQ(arr[21], DEFAULT_KEY_TUNEL);
  EXPECT_EQ(arr[22], DEFAULT_KEY_TUNERIGHTSIDE );
  EXPECT_EQ(arr[23], DEFAULT_KEY_EMOTICON1);
  EXPECT_EQ(arr[24], DEFAULT_KEY_EMOTICON2);
  EXPECT_EQ(arr[25], DEFAULT_KEY_EMOTICON3);
  EXPECT_EQ(arr[26], DEFAULT_KEY_EMOTICON4);
  EXPECT_EQ(arr[27], DEFAULT_KEY_EMOTICON5);
}
