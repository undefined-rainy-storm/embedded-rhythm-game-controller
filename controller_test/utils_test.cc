#include <gtest/gtest.h>
#include "utils.h"

class UtilsTest : public testing::Test {};

TEST(UtilsTest, CheckTwoArrayEquals) {
  const char a[] = { 1, 2, 3, 4, 5 };
  const char b[] = { 1, 2, 3, 4, 5 };
  EXPECT_TRUE(equals(a, b, 5));
}
