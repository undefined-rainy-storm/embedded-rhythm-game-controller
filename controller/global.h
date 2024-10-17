#include "keymap.h"

#ifndef GLOBAL
#define GLOBAL

class Global {
private:
  Global();

  Global(const Global&) = delete;
  Global& operator=(const Global&) = delete;

  keymap_t _keymap;
public:
  static Global *getInstance();

  KeymapConfig keymap;
};

#endif
