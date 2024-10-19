import 'package:flutter/services.dart';

enum Key {
  leftCtrl,
  leftShift,
  leftAlt,
  leftGui,
  rightCtrl,
  rightShift,
  rightAlt,
  rightGui,
  tab,
  capslock,
  backspace,
  enter,
  menu,
  insert,
  delete,
  home,
  end,
  pageUp,
  pageDown,
  upArrow,
  downArrow,
  leftArrow,
  rightArrow,
  numLock,
  kpSlash,
  kpAsterisk,
  kpMinus,
  kpPlus,
  kpEnter,
  kp1,
  kp2,
  kp3,
  kp4,
  kp5,
  kp6,
  kp7,
  kp8,
  kp9,
  kp0,
  kpDot,
  esc,
  f1,
  f2,
  f3,
  f4,
  f5,
  f6,
  f7,
  f8,
  f9,
  f10,
  f11,
  f12,
  f13,
  f14,
  f15,
  f16,
  f17,
  f18,
  f19,
  f20,
  f21,
  f22,
  f23,
  f24,
  printScreen,
  scrollLock,
  pause,
  a,
  b,
  c,
  d,
  e,
  f,
  g,
  h,
  i,
  j,
  k,
  l,
  m,
  n,
  o,
  p,
  q,
  r,
  s,
  t,
  u,
  v,
  w,
  x,
  y,
  z,
  undefined
}

class Arduino {
  static const int leftCtrl = 0x80;
  static const int leftShift = 0x81;
  static const int leftAlt = 0x82;
  static const int leftGui = 0x83;
  static const int rightCtrl = 0x84;
  static const int rightShift = 0x85;
  static const int rightAlt = 0x86;
  static const int rightGui = 0x87;
  static const int tab = 0xB3;
  static const int capslock = 0xC1;
  static const int backspace = 0xB2;
  static const int enter = 0xB0;
  static const int menu = 0xED;
  static const int insert = 0xD1;
  static const int delete = 0xD4;
  static const int home = 0xD2;
  static const int end = 0xD5;
  static const int pageUp = 0xD3;
  static const int pageDown = 0xD6;
  static const int upArrow = 0xDA;
  static const int downArrow = 0xD9;
  static const int leftArrow = 0xD8;
  static const int rightArrow = 0xD7;
  static const int numLock = 0xDB;
  static const int kpSlash = 0xDC;
  static const int kpAsterisk = 0xDD;
  static const int kpMinus = 0xDE;
  static const int kpPlus = 0xDF;
  static const int kpEnter = 0xE0;
  static const int kp1 = 0xE1;
  static const int kp2 = 0xE2;
  static const int kp3 = 0xE3;
  static const int kp4 = 0xE4;
  static const int kp5 = 0xE5;
  static const int kp6 = 0xE6;
  static const int kp7 = 0xE7;
  static const int kp8 = 0xE8;
  static const int kp9 = 0xE9;
  static const int kp0 = 0xEA;
  static const int kpDot = 0xEB;
  static const int esc = 0xB1;
  static const int f1 = 0xC2;
  static const int f2 = 0xC3;
  static const int f3 = 0xC4;
  static const int f4 = 0xC5;
  static const int f5 = 0xC6;
  static const int f6 = 0xC7;
  static const int f7 = 0xC8;
  static const int f8 = 0xC9;
  static const int f9 = 0xCA;
  static const int f10 = 0xCB;
  static const int f11 = 0xCC;
  static const int f12 = 0xCD;
  static const int f13 = 0xF0;
  static const int f14 = 0xF1;
  static const int f15 = 0xF2;
  static const int f16 = 0xF3;
  static const int f17 = 0xF4;
  static const int f18 = 0xF5;
  static const int f19 = 0xF6;
  static const int f20 = 0xF7;
  static const int f21 = 0xF8;
  static const int f22 = 0xF9;
  static const int f23 = 0xFA;
  static const int f24 = 0xFB;
  static const int printScreen = 0xCE;
  static const int scrollLock = 0xCF;
  static const int pause = 0xD0;

  static const int a = 0x41;
  static const int b = 0x42;
  static const int c = 0x43;
  static const int d = 0x44;
  static const int e = 0x45;
  static const int f = 0x46;
  static const int g = 0x47;
  static const int h = 0x48;
  static const int i = 0x49;
  static const int j = 0x4a;
  static const int k = 0x4b;
  static const int l = 0x4c;
  static const int m = 0x4d;
  static const int n = 0x4e;
  static const int o = 0x4f;
  static const int p = 0x50;
  static const int q = 0x51;
  static const int r = 0x52;
  static const int s = 0x53;
  static const int t = 0x54;
  static const int u = 0x55;
  static const int v = 0x56;
  static const int w = 0x57;
  static const int x = 0x58;
  static const int y = 0x59;
  static const int z = 0x5a;

  static Key toKey(int code) {
    switch (code) {
      case Arduino.leftCtrl:
        return Key.leftCtrl;
      case Arduino.leftShift:
        return Key.leftShift;
      case Arduino.leftAlt:
        return Key.leftAlt;
      case Arduino.leftGui:
        return Key.leftGui;
      case Arduino.rightCtrl:
        return Key.rightCtrl;
      case Arduino.rightShift:
        return Key.rightShift;
      case Arduino.rightAlt:
        return Key.rightAlt;
      case Arduino.rightGui:
        return Key.rightGui;
      case Arduino.tab:
        return Key.tab;
      case Arduino.capslock:
        return Key.capslock;
      case Arduino.backspace:
        return Key.backspace;
      case Arduino.enter:
        return Key.enter;
      case Arduino.menu:
        return Key.menu;
      case Arduino.insert:
        return Key.insert;
      case Arduino.delete:
        return Key.delete;
      case Arduino.home:
        return Key.home;
      case Arduino.end:
        return Key.end;
      case Arduino.pageUp:
        return Key.pageUp;
      case Arduino.pageDown:
        return Key.pageDown;
      case Arduino.upArrow:
        return Key.upArrow;
      case Arduino.downArrow:
        return Key.downArrow;
      case Arduino.leftArrow:
        return Key.leftArrow;
      case Arduino.rightArrow:
        return Key.rightArrow;
      case Arduino.numLock:
        return Key.numLock;
      case Arduino.kpSlash:
        return Key.kpSlash;
      case Arduino.kpAsterisk:
        return Key.kpAsterisk;
      case Arduino.kpMinus:
        return Key.kpMinus;
      case Arduino.kpPlus:
        return Key.kpPlus;
      case Arduino.kpEnter:
        return Key.kpEnter;
      case Arduino.kp1:
        return Key.kp1;
      case Arduino.kp2:
        return Key.kp2;
      case Arduino.kp3:
        return Key.kp3;
      case Arduino.kp4:
        return Key.kp4;
      case Arduino.kp5:
        return Key.kp5;
      case Arduino.kp6:
        return Key.kp6;
      case Arduino.kp7:
        return Key.kp7;
      case Arduino.kp8:
        return Key.kp8;
      case Arduino.kp9:
        return Key.kp9;
      case Arduino.kp0:
        return Key.kp0;
      case Arduino.kpDot:
        return Key.kpDot;
      case Arduino.esc:
        return Key.esc;
      case Arduino.f1:
        return Key.f1;
      case Arduino.f2:
        return Key.f2;
      case Arduino.f3:
        return Key.f3;
      case Arduino.f4:
        return Key.f4;
      case Arduino.f5:
        return Key.f5;
      case Arduino.f6:
        return Key.f6;
      case Arduino.f7:
        return Key.f7;
      case Arduino.f8:
        return Key.f8;
      case Arduino.f9:
        return Key.f9;
      case Arduino.f10:
        return Key.f10;
      case Arduino.f11:
        return Key.f11;
      case Arduino.f12:
        return Key.f12;
      case Arduino.f13:
        return Key.f13;
      case Arduino.f14:
        return Key.f14;
      case Arduino.f15:
        return Key.f15;
      case Arduino.f16:
        return Key.f16;
      case Arduino.f17:
        return Key.f17;
      case Arduino.f18:
        return Key.f18;
      case Arduino.f19:
        return Key.f19;
      case Arduino.f20:
        return Key.f20;
      case Arduino.f21:
        return Key.f21;
      case Arduino.f22:
        return Key.f22;
      case Arduino.f23:
        return Key.f23;
      case Arduino.f24:
        return Key.f24;
      case Arduino.printScreen:
        return Key.printScreen;
      case Arduino.scrollLock:
        return Key.scrollLock;
      case Arduino.pause:
        return Key.pause;
      case Arduino.a:
        return Key.a;
      case Arduino.b:
        return Key.b;
      case Arduino.c:
        return Key.c;
      case Arduino.d:
        return Key.d;
      case Arduino.e:
        return Key.e;
      case Arduino.f:
        return Key.f;
      case Arduino.g:
        return Key.g;
      case Arduino.h:
        return Key.h;
      case Arduino.i:
        return Key.i;
      case Arduino.j:
        return Key.j;
      case Arduino.k:
        return Key.k;
      case Arduino.l:
        return Key.l;
      case Arduino.m:
        return Key.m;
      case Arduino.n:
        return Key.n;
      case Arduino.o:
        return Key.o;
      case Arduino.p:
        return Key.p;
      case Arduino.q:
        return Key.q;
      case Arduino.r:
        return Key.r;
      case Arduino.s:
        return Key.s;
      case Arduino.t:
        return Key.t;
      case Arduino.u:
        return Key.u;
      case Arduino.v:
        return Key.v;
      case Arduino.w:
        return Key.w;
      case Arduino.x:
        return Key.x;
      case Arduino.y:
        return Key.y;
      case Arduino.z:
        return Key.z;
      default:
        return Key.undefined;
    }
  }
}

class Flutter {
  static int leftCtrl = LogicalKeyboardKey.controlLeft.hashCode;
  static int leftShift = LogicalKeyboardKey.shiftLeft.hashCode;
  static int leftAlt = LogicalKeyboardKey.altLeft.hashCode;
  static int leftGui = LogicalKeyboardKey.metaLeft.hashCode;
  static int rightCtrl = LogicalKeyboardKey.controlRight.hashCode;
  static int rightShift = LogicalKeyboardKey.shiftRight.hashCode;
  static int rightAlt = LogicalKeyboardKey.altRight.hashCode;
  static int rightGui = LogicalKeyboardKey.metaRight.hashCode;
  static int tab = LogicalKeyboardKey.tab.hashCode;
  static int capslock = LogicalKeyboardKey.capsLock.hashCode;
  static int backspace = LogicalKeyboardKey.backspace.hashCode;
  static int enter = LogicalKeyboardKey.enter.hashCode;
  static int menu = -1;
  static int insert = LogicalKeyboardKey.insert.hashCode;
  static int delete = LogicalKeyboardKey.delete.hashCode;
  static int home = LogicalKeyboardKey.home.hashCode;
  static int end = LogicalKeyboardKey.end.hashCode;
  static int pageUp = LogicalKeyboardKey.pageUp.hashCode;
  static int pageDown = LogicalKeyboardKey.pageDown.hashCode;
  static int upArrow = LogicalKeyboardKey.arrowUp.hashCode;
  static int downArrow = LogicalKeyboardKey.arrowDown.hashCode;
  static int leftArrow = LogicalKeyboardKey.arrowLeft.hashCode;
  static int rightArrow = LogicalKeyboardKey.arrowRight.hashCode;
  static int numLock = LogicalKeyboardKey.numLock.hashCode;
  static int kpSlash = LogicalKeyboardKey.numpadDivide.hashCode;
  static int kpAsterisk = LogicalKeyboardKey.numpadMultiply.hashCode;
  static int kpMinus = LogicalKeyboardKey.numpadSubtract.hashCode;
  static int kpPlus = LogicalKeyboardKey.numpadAdd.hashCode;
  static int kpEnter = LogicalKeyboardKey.numpadEnter.hashCode;
  static int kp1 = LogicalKeyboardKey.numpad1.hashCode;
  static int kp2 = LogicalKeyboardKey.numpad2.hashCode;
  static int kp3 = LogicalKeyboardKey.numpad3.hashCode;
  static int kp4 = LogicalKeyboardKey.numpad4.hashCode;
  static int kp5 = LogicalKeyboardKey.numpad5.hashCode;
  static int kp6 = LogicalKeyboardKey.numpad6.hashCode;
  static int kp7 = LogicalKeyboardKey.numpad7.hashCode;
  static int kp8 = LogicalKeyboardKey.numpad8.hashCode;
  static int kp9 = LogicalKeyboardKey.numpad9.hashCode;
  static int kp0 = LogicalKeyboardKey.numpad0.hashCode;
  static int kpDot = LogicalKeyboardKey.numpadComma.hashCode;
  static int esc = LogicalKeyboardKey.escape.hashCode;
  static int f1 = LogicalKeyboardKey.f1.hashCode;
  static int f2 = LogicalKeyboardKey.f2.hashCode;
  static int f3 = LogicalKeyboardKey.f3.hashCode;
  static int f4 = LogicalKeyboardKey.f4.hashCode;
  static int f5 = LogicalKeyboardKey.f5.hashCode;
  static int f6 = LogicalKeyboardKey.f6.hashCode;
  static int f7 = LogicalKeyboardKey.f7.hashCode;
  static int f8 = LogicalKeyboardKey.f8.hashCode;
  static int f9 = LogicalKeyboardKey.f9.hashCode;
  static int f10 = LogicalKeyboardKey.f10.hashCode;
  static int f11 = LogicalKeyboardKey.f11.hashCode;
  static int f12 = LogicalKeyboardKey.f12.hashCode;
  static int f13 = LogicalKeyboardKey.f13.hashCode;
  static int f14 = LogicalKeyboardKey.f14.hashCode;
  static int f15 = LogicalKeyboardKey.f15.hashCode;
  static int f16 = LogicalKeyboardKey.f16.hashCode;
  static int f17 = LogicalKeyboardKey.f17.hashCode;
  static int f18 = LogicalKeyboardKey.f18.hashCode;
  static int f19 = LogicalKeyboardKey.f19.hashCode;
  static int f20 = LogicalKeyboardKey.f20.hashCode;
  static int f21 = LogicalKeyboardKey.f21.hashCode;
  static int f22 = LogicalKeyboardKey.f22.hashCode;
  static int f23 = LogicalKeyboardKey.f23.hashCode;
  static int f24 = LogicalKeyboardKey.f24.hashCode;
  static int printScreen = LogicalKeyboardKey.printScreen.hashCode;
  static int scrollLock = LogicalKeyboardKey.scrollLock.hashCode;
  static int pause = LogicalKeyboardKey.pause.hashCode;
  static int a = LogicalKeyboardKey.keyA.hashCode;
  static int b = LogicalKeyboardKey.keyB.hashCode;
  static int c = LogicalKeyboardKey.keyC.hashCode;
  static int d = LogicalKeyboardKey.keyD.hashCode;
  static int e = LogicalKeyboardKey.keyE.hashCode;
  static int f = LogicalKeyboardKey.keyF.hashCode;
  static int g = LogicalKeyboardKey.keyG.hashCode;
  static int h = LogicalKeyboardKey.keyH.hashCode;
  static int i = LogicalKeyboardKey.keyI.hashCode;
  static int j = LogicalKeyboardKey.keyJ.hashCode;
  static int k = LogicalKeyboardKey.keyK.hashCode;
  static int l = LogicalKeyboardKey.keyL.hashCode;
  static int m = LogicalKeyboardKey.keyM.hashCode;
  static int n = LogicalKeyboardKey.keyN.hashCode;
  static int o = LogicalKeyboardKey.keyO.hashCode;
  static int p = LogicalKeyboardKey.keyP.hashCode;
  static int q = LogicalKeyboardKey.keyQ.hashCode;
  static int r = LogicalKeyboardKey.keyR.hashCode;
  static int s = LogicalKeyboardKey.keyS.hashCode;
  static int t = LogicalKeyboardKey.keyT.hashCode;
  static int u = LogicalKeyboardKey.keyU.hashCode;
  static int v = LogicalKeyboardKey.keyV.hashCode;
  static int w = LogicalKeyboardKey.keyW.hashCode;
  static int x = LogicalKeyboardKey.keyX.hashCode;
  static int y = LogicalKeyboardKey.keyY.hashCode;
  static int z = LogicalKeyboardKey.keyZ.hashCode;

  static Key toKey(int code) {
    if (code == Flutter.leftCtrl) {
      return Key.leftCtrl;
    }
    if (code == Flutter.leftShift) {
      return Key.leftShift;
    }
    if (code == Flutter.leftAlt) {
      return Key.leftAlt;
    }
    if (code == Flutter.leftGui) {
      return Key.leftGui;
    }
    if (code == Flutter.rightCtrl) {
      return Key.rightCtrl;
    }
    if (code == Flutter.rightShift) {
      return Key.rightShift;
    }
    if (code == Flutter.rightAlt) {
      return Key.rightAlt;
    }
    if (code == Flutter.rightGui) {
      return Key.rightGui;
    }
    if (code == Flutter.tab) {
      return Key.tab;
    }
    if (code == Flutter.capslock) {
      return Key.capslock;
    }
    if (code == Flutter.backspace) {
      return Key.backspace;
    }
    if (code == Flutter.enter) {
      return Key.enter;
    }
    if (code == Flutter.menu) {
      return Key.menu;
    }
    if (code == Flutter.insert) {
      return Key.insert;
    }
    if (code == Flutter.delete) {
      return Key.delete;
    }
    if (code == Flutter.home) {
      return Key.home;
    }
    if (code == Flutter.end) {
      return Key.end;
    }
    if (code == Flutter.pageUp) {
      return Key.pageUp;
    }
    if (code == Flutter.pageDown) {
      return Key.pageDown;
    }
    if (code == Flutter.upArrow) {
      return Key.upArrow;
    }
    if (code == Flutter.downArrow) {
      return Key.downArrow;
    }
    if (code == Flutter.leftArrow) {
      return Key.leftArrow;
    }
    if (code == Flutter.rightArrow) {
      return Key.rightArrow;
    }
    if (code == Flutter.numLock) {
      return Key.numLock;
    }
    if (code == Flutter.kpSlash) {
      return Key.kpSlash;
    }
    if (code == Flutter.kpAsterisk) {
      return Key.kpAsterisk;
    }
    if (code == Flutter.kpMinus) {
      return Key.kpMinus;
    }
    if (code == Flutter.kpPlus) {
      return Key.kpPlus;
    }
    if (code == Flutter.kpEnter) {
      return Key.kpEnter;
    }
    if (code == Flutter.kp1) {
      return Key.kp1;
    }
    if (code == Flutter.kp2) {
      return Key.kp2;
    }
    if (code == Flutter.kp3) {
      return Key.kp3;
    }
    if (code == Flutter.kp4) {
      return Key.kp4;
    }
    if (code == Flutter.kp5) {
      return Key.kp5;
    }
    if (code == Flutter.kp6) {
      return Key.kp6;
    }
    if (code == Flutter.kp7) {
      return Key.kp7;
    }
    if (code == Flutter.kp8) {
      return Key.kp8;
    }
    if (code == Flutter.kp9) {
      return Key.kp9;
    }
    if (code == Flutter.kp0) {
      return Key.kp0;
    }
    if (code == Flutter.kpDot) {
      return Key.kpDot;
    }
    if (code == Flutter.esc) {
      return Key.esc;
    }
    if (code == Flutter.f1) {
      return Key.f1;
    }
    if (code == Flutter.f2) {
      return Key.f2;
    }
    if (code == Flutter.f3) {
      return Key.f3;
    }
    if (code == Flutter.f4) {
      return Key.f4;
    }
    if (code == Flutter.f5) {
      return Key.f5;
    }
    if (code == Flutter.f6) {
      return Key.f6;
    }
    if (code == Flutter.f7) {
      return Key.f7;
    }
    if (code == Flutter.f8) {
      return Key.f8;
    }
    if (code == Flutter.f9) {
      return Key.f9;
    }
    if (code == Flutter.f10) {
      return Key.f10;
    }
    if (code == Flutter.f11) {
      return Key.f11;
    }
    if (code == Flutter.f12) {
      return Key.f12;
    }
    if (code == Flutter.f13) {
      return Key.f13;
    }
    if (code == Flutter.f14) {
      return Key.f14;
    }
    if (code == Flutter.f15) {
      return Key.f15;
    }
    if (code == Flutter.f16) {
      return Key.f16;
    }
    if (code == Flutter.f17) {
      return Key.f17;
    }
    if (code == Flutter.f18) {
      return Key.f18;
    }
    if (code == Flutter.f19) {
      return Key.f19;
    }
    if (code == Flutter.f20) {
      return Key.f20;
    }
    if (code == Flutter.f21) {
      return Key.f21;
    }
    if (code == Flutter.f22) {
      return Key.f22;
    }
    if (code == Flutter.f23) {
      return Key.f23;
    }
    if (code == Flutter.f24) {
      return Key.f24;
    }
    if (code == Flutter.printScreen) {
      return Key.printScreen;
    }
    if (code == Flutter.scrollLock) {
      return Key.scrollLock;
    }
    if (code == Flutter.pause) {
      return Key.pause;
    }
    if (code == Flutter.a) {
      return Key.a;
    }
    if (code == Flutter.b) {
      return Key.b;
    }
    if (code == Flutter.c) {
      return Key.c;
    }
    if (code == Flutter.d) {
      return Key.d;
    }
    if (code == Flutter.e) {
      return Key.e;
    }
    if (code == Flutter.f) {
      return Key.f;
    }
    if (code == Flutter.g) {
      return Key.g;
    }
    if (code == Flutter.h) {
      return Key.h;
    }
    if (code == Flutter.i) {
      return Key.i;
    }
    if (code == Flutter.j) {
      return Key.j;
    }
    if (code == Flutter.k) {
      return Key.k;
    }
    if (code == Flutter.l) {
      return Key.l;
    }
    if (code == Flutter.m) {
      return Key.m;
    }
    if (code == Flutter.n) {
      return Key.n;
    }
    if (code == Flutter.o) {
      return Key.o;
    }
    if (code == Flutter.p) {
      return Key.p;
    }
    if (code == Flutter.q) {
      return Key.q;
    }
    if (code == Flutter.r) {
      return Key.r;
    }
    if (code == Flutter.s) {
      return Key.s;
    }
    if (code == Flutter.t) {
      return Key.t;
    }
    if (code == Flutter.u) {
      return Key.u;
    }
    if (code == Flutter.v) {
      return Key.v;
    }
    if (code == Flutter.w) {
      return Key.w;
    }
    if (code == Flutter.x) {
      return Key.x;
    }
    if (code == Flutter.y) {
      return Key.y;
    }
    if (code == Flutter.z) {
      return Key.z;
    }
    return Key.undefined;
  }
}

Map<Key, int> keyToArduino = {
  Key.leftCtrl: Arduino.leftCtrl,
  Key.leftShift: Arduino.leftShift,
  Key.leftAlt: Arduino.leftAlt,
  Key.leftGui: Arduino.leftGui,
  Key.rightCtrl: Arduino.rightCtrl,
  Key.rightShift: Arduino.rightShift,
  Key.rightAlt: Arduino.rightAlt,
  Key.rightGui: Arduino.rightGui,
  Key.tab: Arduino.tab,
  Key.capslock: Arduino.capslock,
  Key.backspace: Arduino.backspace,
  Key.enter: Arduino.enter,
  Key.menu: Arduino.menu,
  Key.insert: Arduino.insert,
  Key.delete: Arduino.delete,
  Key.home: Arduino.home,
  Key.end: Arduino.end,
  Key.pageUp: Arduino.pageUp,
  Key.pageDown: Arduino.pageDown,
  Key.upArrow: Arduino.upArrow,
  Key.downArrow: Arduino.downArrow,
  Key.leftArrow: Arduino.leftArrow,
  Key.rightArrow: Arduino.rightArrow,
  Key.numLock: Arduino.numLock,
  Key.kpSlash: Arduino.kpSlash,
  Key.kpAsterisk: Arduino.kpAsterisk,
  Key.kpMinus: Arduino.kpMinus,
  Key.kpPlus: Arduino.kpPlus,
  Key.kpEnter: Arduino.kpEnter,
  Key.kp1: Arduino.kp1,
  Key.kp2: Arduino.kp2,
  Key.kp3: Arduino.kp3,
  Key.kp4: Arduino.kp4,
  Key.kp5: Arduino.kp5,
  Key.kp6: Arduino.kp6,
  Key.kp7: Arduino.kp7,
  Key.kp8: Arduino.kp8,
  Key.kp9: Arduino.kp9,
  Key.kp0: Arduino.kp0,
  Key.kpDot: Arduino.kpDot,
  Key.esc: Arduino.esc,
  Key.f1: Arduino.f1,
  Key.f2: Arduino.f2,
  Key.f3: Arduino.f3,
  Key.f4: Arduino.f4,
  Key.f5: Arduino.f5,
  Key.f6: Arduino.f6,
  Key.f7: Arduino.f7,
  Key.f8: Arduino.f8,
  Key.f9: Arduino.f9,
  Key.f10: Arduino.f10,
  Key.f11: Arduino.f11,
  Key.f12: Arduino.f12,
  Key.f13: Arduino.f13,
  Key.f14: Arduino.f14,
  Key.f15: Arduino.f15,
  Key.f16: Arduino.f16,
  Key.f17: Arduino.f17,
  Key.f18: Arduino.f18,
  Key.f19: Arduino.f19,
  Key.f20: Arduino.f20,
  Key.f21: Arduino.f21,
  Key.f22: Arduino.f22,
  Key.f23: Arduino.f23,
  Key.f24: Arduino.f24,
  Key.printScreen: Arduino.printScreen,
  Key.scrollLock: Arduino.scrollLock,
  Key.pause: Arduino.pause,
  Key.a: Arduino.a,
  Key.b: Arduino.b,
  Key.c: Arduino.c,
  Key.d: Arduino.d,
  Key.e: Arduino.e,
  Key.f: Arduino.f,
  Key.g: Arduino.g,
  Key.h: Arduino.h,
  Key.i: Arduino.i,
  Key.j: Arduino.j,
  Key.k: Arduino.k,
  Key.l: Arduino.l,
  Key.m: Arduino.m,
  Key.n: Arduino.n,
  Key.o: Arduino.o,
  Key.p: Arduino.p,
  Key.q: Arduino.q,
  Key.r: Arduino.r,
  Key.s: Arduino.s,
  Key.t: Arduino.t,
  Key.u: Arduino.u,
  Key.v: Arduino.v,
  Key.w: Arduino.w,
  Key.x: Arduino.x,
  Key.y: Arduino.y,
  Key.z: Arduino.z,
  Key.undefined: -1,
};

Map<Key, int> keyToFlutter = {
  Key.leftCtrl: Flutter.leftCtrl,
  Key.leftShift: Flutter.leftShift,
  Key.leftAlt: Flutter.leftAlt,
  Key.leftGui: Flutter.leftGui,
  Key.rightCtrl: Flutter.rightCtrl,
  Key.rightShift: Flutter.rightShift,
  Key.rightAlt: Flutter.rightAlt,
  Key.rightGui: Flutter.rightGui,
  Key.tab: Flutter.tab,
  Key.capslock: Flutter.capslock,
  Key.backspace: Flutter.backspace,
  Key.enter: Flutter.enter,
  Key.menu: Flutter.menu,
  Key.insert: Flutter.insert,
  Key.delete: Flutter.delete,
  Key.home: Flutter.home,
  Key.end: Flutter.end,
  Key.pageUp: Flutter.pageUp,
  Key.pageDown: Flutter.pageDown,
  Key.upArrow: Flutter.upArrow,
  Key.downArrow: Flutter.downArrow,
  Key.leftArrow: Flutter.leftArrow,
  Key.rightArrow: Flutter.rightArrow,
  Key.numLock: Flutter.numLock,
  Key.kpSlash: Flutter.kpSlash,
  Key.kpAsterisk: Flutter.kpAsterisk,
  Key.kpMinus: Flutter.kpMinus,
  Key.kpPlus: Flutter.kpPlus,
  Key.kpEnter: Flutter.kpEnter,
  Key.kp1: Flutter.kp1,
  Key.kp2: Flutter.kp2,
  Key.kp3: Flutter.kp3,
  Key.kp4: Flutter.kp4,
  Key.kp5: Flutter.kp5,
  Key.kp6: Flutter.kp6,
  Key.kp7: Flutter.kp7,
  Key.kp8: Flutter.kp8,
  Key.kp9: Flutter.kp9,
  Key.kp0: Flutter.kp0,
  Key.kpDot: Flutter.kpDot,
  Key.esc: Flutter.esc,
  Key.f1: Flutter.f1,
  Key.f2: Flutter.f2,
  Key.f3: Flutter.f3,
  Key.f4: Flutter.f4,
  Key.f5: Flutter.f5,
  Key.f6: Flutter.f6,
  Key.f7: Flutter.f7,
  Key.f8: Flutter.f8,
  Key.f9: Flutter.f9,
  Key.f10: Flutter.f10,
  Key.f11: Flutter.f11,
  Key.f12: Flutter.f12,
  Key.f13: Flutter.f13,
  Key.f14: Flutter.f14,
  Key.f15: Flutter.f15,
  Key.f16: Flutter.f16,
  Key.f17: Flutter.f17,
  Key.f18: Flutter.f18,
  Key.f19: Flutter.f19,
  Key.f20: Flutter.f20,
  Key.f21: Flutter.f21,
  Key.f22: Flutter.f22,
  Key.f23: Flutter.f23,
  Key.f24: Flutter.f24,
  Key.printScreen: Flutter.printScreen,
  Key.scrollLock: Flutter.scrollLock,
  Key.pause: Flutter.pause,
  Key.a: Flutter.a,
  Key.b: Flutter.b,
  Key.c: Flutter.c,
  Key.d: Flutter.d,
  Key.e: Flutter.e,
  Key.f: Flutter.f,
  Key.g: Flutter.g,
  Key.h: Flutter.h,
  Key.i: Flutter.i,
  Key.j: Flutter.j,
  Key.k: Flutter.k,
  Key.l: Flutter.l,
  Key.m: Flutter.m,
  Key.n: Flutter.n,
  Key.o: Flutter.o,
  Key.p: Flutter.p,
  Key.q: Flutter.q,
  Key.r: Flutter.r,
  Key.s: Flutter.s,
  Key.t: Flutter.t,
  Key.u: Flutter.u,
  Key.v: Flutter.v,
  Key.w: Flutter.w,
  Key.x: Flutter.x,
  Key.y: Flutter.y,
  Key.z: Flutter.z,
  Key.undefined: -1,
};
