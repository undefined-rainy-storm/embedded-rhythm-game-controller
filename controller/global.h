#include "keymap.h"

#ifndef GLOBAL
#define GLOBAL

class Global {
private:
  static Global *instance;
public:
  static Global *getInstance();
  KeymapConfig keymap;
};

#endif
