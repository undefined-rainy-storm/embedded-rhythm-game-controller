import 'package:flutter/services.dart';

class Arduino {
  static const int leftCtrl    = 0x80;
  static const int leftShift   = 0x81;
  static const int leftAlt     = 0x82;
  static const int leftGui     = 0x83;
  static const int rightCtrl   = 0x84;
  static const int rightShift  = 0x85;
  static const int rightAlt    = 0x86;
  static const int rightGui    = 0x87;
  static const int tab         = 0xB3;
  static const int capslock    = 0xC1;
  static const int backspace   = 0xB2;
  static const int enter       = 0xB0;
  static const int menu        = 0xED;
  static const int insert      = 0xD1;
  static const int delete      = 0xD4;
  static const int home        = 0xD2;
  static const int end         = 0xD5;
  static const int pageUp      = 0xD3;
  static const int pageDown    = 0xD6;
  static const int upArrow     = 0xDA;
  static const int downArrow   = 0xD9;
  static const int leftArrow   = 0xD8;
  static const int rightArrow  = 0xD7;
  static const int numLock     = 0xDB;
  static const int kpSlash     = 0xDC;
  static const int kpAsterisk  = 0xDD;
  static const int kpMinus     = 0xDE;
  static const int kpPlus      = 0xDF;
  static const int kpEnter     = 0xE0;
  static const int kp1         = 0xE1;
  static const int kp2         = 0xE2;
  static const int kp3         = 0xE3;
  static const int kp4         = 0xE4;
  static const int kp5         = 0xE5;
  static const int kp6         = 0xE6;
  static const int kp7         = 0xE7;
  static const int kp8         = 0xE8;
  static const int kp9         = 0xE9;
  static const int kp0         = 0xEA;
  static const int kpDot       = 0xEB;
  static const int esc         = 0xB1;
  static const int f1          = 0xC2;
  static const int f2          = 0xC3;
  static const int f3          = 0xC4;
  static const int f4          = 0xC5;
  static const int f5          = 0xC6;
  static const int f6          = 0xC7;
  static const int f7          = 0xC8;
  static const int f8          = 0xC9;
  static const int f9          = 0xCA;
  static const int f10         = 0xCB;
  static const int f11         = 0xCC;
  static const int f12         = 0xCD;
  static const int f13         = 0xF0;
  static const int f14         = 0xF1;
  static const int f15         = 0xF2;
  static const int f16         = 0xF3;
  static const int f17         = 0xF4;
  static const int f18         = 0xF5;
  static const int f19         = 0xF6;
  static const int f20         = 0xF7;
  static const int f21         = 0xF8;
  static const int f22         = 0xF9;
  static const int f23         = 0xFA;
  static const int f24         = 0xFB;
  static const int printScreen = 0xCE;
  static const int scrollLock  = 0xCF;
  static const int pause       = 0xD0;
}

class Flutter {
  static int leftCtrl    = PhysicalKeyboardKey.controlLeft.hashCode;
  static int leftShift   = PhysicalKeyboardKey.shiftLeft.hashCode;
  static int leftAlt     = PhysicalKeyboardKey.altLeft.hashCode;
  static int leftGui     = PhysicalKeyboardKey.metaLeft.hashCode;
  static int rightCtrl   = PhysicalKeyboardKey.controlRight.hashCode;
  static int rightShift  = PhysicalKeyboardKey.shiftRight.hashCode;
  static int rightAlt    = PhysicalKeyboardKey.altRight.hashCode;
  static int rightGui    = PhysicalKeyboardKey.metaRight.hashCode;
  static int tab         = PhysicalKeyboardKey.tab.hashCode;
  static int capslock    = PhysicalKeyboardKey.capsLock.hashCode;
  static int backspace   = PhysicalKeyboardKey.backspace.hashCode;
  static int enter       = PhysicalKeyboardKey.enter.hashCode;
  static int menu        = -1;
  static int insert      = PhysicalKeyboardKey.insert.hashCode;
  static int delete      = PhysicalKeyboardKey.delete.hashCode;
  static int home        = PhysicalKeyboardKey.home.hashCode;
  static int end         = PhysicalKeyboardKey.end.hashCode;
  static int pageUp      = PhysicalKeyboardKey.pageUp.hashCode;
  static int pageDown    = PhysicalKeyboardKey.pageDown.hashCode;
  static int upArrow     = PhysicalKeyboardKey.arrowUp.hashCode;
  static int downArrow   = PhysicalKeyboardKey.arrowDown.hashCode;
  static int leftArrow   = PhysicalKeyboardKey.arrowLeft.hashCode;
  static int rightArrow  = PhysicalKeyboardKey.arrowRight.hashCode;
  static int numLock     = PhysicalKeyboardKey.numLock.hashCode;
  static int kpSlash     = PhysicalKeyboardKey.numpadDivide.hashCode;
  static int kpAsterisk  = PhysicalKeyboardKey.numpadMultiply.hashCode;
  static int kpMinus     = PhysicalKeyboardKey.numpadSubtract.hashCode;
  static int kpPlus      = PhysicalKeyboardKey.numpadAdd.hashCode;
  static int kpEnter     = PhysicalKeyboardKey.numpadEnter.hashCode;
  static int kp1         = PhysicalKeyboardKey.numpad1.hashCode;
  static int kp2         = PhysicalKeyboardKey.numpad2.hashCode;
  static int kp3         = PhysicalKeyboardKey.numpad3.hashCode;
  static int kp4         = PhysicalKeyboardKey.numpad4.hashCode;
  static int kp5         = PhysicalKeyboardKey.numpad5.hashCode;
  static int kp6         = PhysicalKeyboardKey.numpad6.hashCode;
  static int kp7         = PhysicalKeyboardKey.numpad7.hashCode;
  static int kp8         = PhysicalKeyboardKey.numpad8.hashCode;
  static int kp9         = PhysicalKeyboardKey.numpad9.hashCode;
  static int kp0         = PhysicalKeyboardKey.numpad0.hashCode;
  static int kpDot       = PhysicalKeyboardKey.numpadComma.hashCode;
  static int esc         = PhysicalKeyboardKey.escape.hashCode;
  static int f1          = PhysicalKeyboardKey.f1.hashCode;
  static int f2          = PhysicalKeyboardKey.f2.hashCode;
  static int f3          = PhysicalKeyboardKey.f3.hashCode;
  static int f4          = PhysicalKeyboardKey.f4.hashCode;
  static int f5          = PhysicalKeyboardKey.f5.hashCode;
  static int f6          = PhysicalKeyboardKey.f6.hashCode;
  static int f7          = PhysicalKeyboardKey.f7.hashCode;
  static int f8          = PhysicalKeyboardKey.f8.hashCode;
  static int f9          = PhysicalKeyboardKey.f9.hashCode;
  static int f10         = PhysicalKeyboardKey.f10.hashCode;
  static int f11         = PhysicalKeyboardKey.f11.hashCode;
  static int f12         = PhysicalKeyboardKey.f12.hashCode;
  static int f13         = PhysicalKeyboardKey.f13.hashCode;
  static int f14         = PhysicalKeyboardKey.f14.hashCode;
  static int f15         = PhysicalKeyboardKey.f15.hashCode;
  static int f16         = PhysicalKeyboardKey.f16.hashCode;
  static int f17         = PhysicalKeyboardKey.f17.hashCode;
  static int f18         = PhysicalKeyboardKey.f18.hashCode;
  static int f19         = PhysicalKeyboardKey.f19.hashCode;
  static int f20         = PhysicalKeyboardKey.f20.hashCode;
  static int f21         = PhysicalKeyboardKey.f21.hashCode;
  static int f22         = PhysicalKeyboardKey.f22.hashCode;
  static int f23         = PhysicalKeyboardKey.f23.hashCode;
  static int f24         = PhysicalKeyboardKey.f24.hashCode;
  static int printScreen = PhysicalKeyboardKey.printScreen.hashCode;
  static int scrollLock  = PhysicalKeyboardKey.scrollLock.hashCode;
  static int pause       = PhysicalKeyboardKey.pause.hashCode;
}

Map<int, int> flutter2Arduino = {
  Flutter.leftCtrl    : Arduino.leftCtrl    ,
  Flutter.leftShift   : Arduino.leftShift   ,
  Flutter.leftAlt     : Arduino.leftAlt     ,
  Flutter.leftGui     : Arduino.leftGui     ,
  Flutter.rightCtrl   : Arduino.rightCtrl   ,
  Flutter.rightShift  : Arduino.rightShift  ,
  Flutter.rightAlt    : Arduino.rightAlt    ,
  Flutter.rightGui    : Arduino.rightGui    ,
  Flutter.tab         : Arduino.tab         ,
  Flutter.capslock    : Arduino.capslock    ,
  Flutter.backspace   : Arduino.backspace   ,
  Flutter.enter       : Arduino.enter       ,
  Flutter.menu        : Arduino.menu        ,
  Flutter.insert      : Arduino.insert      ,
  Flutter.delete      : Arduino.delete      ,
  Flutter.home        : Arduino.home        ,
  Flutter.end         : Arduino.end         ,
  Flutter.pageUp      : Arduino.pageUp      ,
  Flutter.pageDown    : Arduino.pageDown    ,
  Flutter.upArrow     : Arduino.upArrow     ,
  Flutter.downArrow   : Arduino.downArrow   ,
  Flutter.leftArrow   : Arduino.leftArrow   ,
  Flutter.rightArrow  : Arduino.rightArrow  ,
  Flutter.numLock     : Arduino.numLock     ,
  Flutter.kpSlash     : Arduino.kpSlash     ,
  Flutter.kpAsterisk  : Arduino.kpAsterisk  ,
  Flutter.kpMinus     : Arduino.kpMinus     ,
  Flutter.kpPlus      : Arduino.kpPlus      ,
  Flutter.kpEnter     : Arduino.kpEnter     ,
  Flutter.kp1         : Arduino.kp1         ,
  Flutter.kp2         : Arduino.kp2         ,
  Flutter.kp3         : Arduino.kp3         ,
  Flutter.kp4         : Arduino.kp4         ,
  Flutter.kp5         : Arduino.kp5         ,
  Flutter.kp6         : Arduino.kp6         ,
  Flutter.kp7         : Arduino.kp7         ,
  Flutter.kp8         : Arduino.kp8         ,
  Flutter.kp9         : Arduino.kp9         ,
  Flutter.kp0         : Arduino.kp0         ,
  Flutter.kpDot       : Arduino.kpDot       ,
  Flutter.esc         : Arduino.esc         ,
  Flutter.f1          : Arduino.f1          ,
  Flutter.f2          : Arduino.f2          ,
  Flutter.f3          : Arduino.f3          ,
  Flutter.f4          : Arduino.f4          ,
  Flutter.f5          : Arduino.f5          ,
  Flutter.f6          : Arduino.f6          ,
  Flutter.f7          : Arduino.f7          ,
  Flutter.f8          : Arduino.f8          ,
  Flutter.f9          : Arduino.f9          ,
  Flutter.f10         : Arduino.f10         ,
  Flutter.f11         : Arduino.f11         ,
  Flutter.f12         : Arduino.f12         ,
  Flutter.f13         : Arduino.f13         ,
  Flutter.f14         : Arduino.f14         ,
  Flutter.f15         : Arduino.f15         ,
  Flutter.f16         : Arduino.f16         ,
  Flutter.f17         : Arduino.f17         ,
  Flutter.f18         : Arduino.f18         ,
  Flutter.f19         : Arduino.f19         ,
  Flutter.f20         : Arduino.f20         ,
  Flutter.f21         : Arduino.f21         ,
  Flutter.f22         : Arduino.f22         ,
  Flutter.f23         : Arduino.f23         ,
  Flutter.f24         : Arduino.f24         ,
  Flutter.printScreen : Arduino.printScreen ,
  Flutter.scrollLock  : Arduino.scrollLock  ,
  Flutter.pause       : Arduino.pause       ,
};

Map<int, int> arduino2Flutter = {
  Arduino.leftCtrl    : Flutter.leftCtrl    ,
  Arduino.leftShift   : Flutter.leftShift   ,
  Arduino.leftAlt     : Flutter.leftAlt     ,
  Arduino.leftGui     : Flutter.leftGui     ,
  Arduino.rightCtrl   : Flutter.rightCtrl   ,
  Arduino.rightShift  : Flutter.rightShift  ,
  Arduino.rightAlt    : Flutter.rightAlt    ,
  Arduino.rightGui    : Flutter.rightGui    ,
  Arduino.tab         : Flutter.tab         ,
  Arduino.capslock    : Flutter.capslock    ,
  Arduino.backspace   : Flutter.backspace   ,
  Arduino.enter       : Flutter.enter       ,
  Arduino.menu        : Flutter.menu        ,
  Arduino.insert      : Flutter.insert      ,
  Arduino.delete      : Flutter.delete      ,
  Arduino.home        : Flutter.home        ,
  Arduino.end         : Flutter.end         ,
  Arduino.pageUp      : Flutter.pageUp      ,
  Arduino.pageDown    : Flutter.pageDown    ,
  Arduino.upArrow     : Flutter.upArrow     ,
  Arduino.downArrow   : Flutter.downArrow   ,
  Arduino.leftArrow   : Flutter.leftArrow   ,
  Arduino.rightArrow  : Flutter.rightArrow  ,
  Arduino.numLock     : Flutter.numLock     ,
  Arduino.kpSlash     : Flutter.kpSlash     ,
  Arduino.kpAsterisk  : Flutter.kpAsterisk  ,
  Arduino.kpMinus     : Flutter.kpMinus     ,
  Arduino.kpPlus      : Flutter.kpPlus      ,
  Arduino.kpEnter     : Flutter.kpEnter     ,
  Arduino.kp1         : Flutter.kp1         ,
  Arduino.kp2         : Flutter.kp2         ,
  Arduino.kp3         : Flutter.kp3         ,
  Arduino.kp4         : Flutter.kp4         ,
  Arduino.kp5         : Flutter.kp5         ,
  Arduino.kp6         : Flutter.kp6         ,
  Arduino.kp7         : Flutter.kp7         ,
  Arduino.kp8         : Flutter.kp8         ,
  Arduino.kp9         : Flutter.kp9         ,
  Arduino.kp0         : Flutter.kp0         ,
  Arduino.kpDot       : Flutter.kpDot       ,
  Arduino.esc         : Flutter.esc         ,
  Arduino.f1          : Flutter.f1          ,
  Arduino.f2          : Flutter.f2          ,
  Arduino.f3          : Flutter.f3          ,
  Arduino.f4          : Flutter.f4          ,
  Arduino.f5          : Flutter.f5          ,
  Arduino.f6          : Flutter.f6          ,
  Arduino.f7          : Flutter.f7          ,
  Arduino.f8          : Flutter.f8          ,
  Arduino.f9          : Flutter.f9          ,
  Arduino.f10         : Flutter.f10         ,
  Arduino.f11         : Flutter.f11         ,
  Arduino.f12         : Flutter.f12         ,
  Arduino.f13         : Flutter.f13         ,
  Arduino.f14         : Flutter.f14         ,
  Arduino.f15         : Flutter.f15         ,
  Arduino.f16         : Flutter.f16         ,
  Arduino.f17         : Flutter.f17         ,
  Arduino.f18         : Flutter.f18         ,
  Arduino.f19         : Flutter.f19         ,
  Arduino.f20         : Flutter.f20         ,
  Arduino.f21         : Flutter.f21         ,
  Arduino.f22         : Flutter.f22         ,
  Arduino.f23         : Flutter.f23         ,
  Arduino.f24         : Flutter.f24         ,
  Arduino.printScreen : Flutter.printScreen ,
  Arduino.scrollLock  : Flutter.scrollLock  ,
  Arduino.pause       : Flutter.pause       ,
};
