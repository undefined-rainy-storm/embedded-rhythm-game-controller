import 'package:flutter/services.dart';

enum Keycode {
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

  static Keycode toKey(int code) {
    switch (code) {
      case Arduino.leftCtrl:
        return Keycode.leftCtrl;
      case Arduino.leftShift:
        return Keycode.leftShift;
      case Arduino.leftAlt:
        return Keycode.leftAlt;
      case Arduino.leftGui:
        return Keycode.leftGui;
      case Arduino.rightCtrl:
        return Keycode.rightCtrl;
      case Arduino.rightShift:
        return Keycode.rightShift;
      case Arduino.rightAlt:
        return Keycode.rightAlt;
      case Arduino.rightGui:
        return Keycode.rightGui;
      case Arduino.tab:
        return Keycode.tab;
      case Arduino.capslock:
        return Keycode.capslock;
      case Arduino.backspace:
        return Keycode.backspace;
      case Arduino.enter:
        return Keycode.enter;
      case Arduino.menu:
        return Keycode.menu;
      case Arduino.insert:
        return Keycode.insert;
      case Arduino.delete:
        return Keycode.delete;
      case Arduino.home:
        return Keycode.home;
      case Arduino.end:
        return Keycode.end;
      case Arduino.pageUp:
        return Keycode.pageUp;
      case Arduino.pageDown:
        return Keycode.pageDown;
      case Arduino.upArrow:
        return Keycode.upArrow;
      case Arduino.downArrow:
        return Keycode.downArrow;
      case Arduino.leftArrow:
        return Keycode.leftArrow;
      case Arduino.rightArrow:
        return Keycode.rightArrow;
      case Arduino.numLock:
        return Keycode.numLock;
      case Arduino.kpSlash:
        return Keycode.kpSlash;
      case Arduino.kpAsterisk:
        return Keycode.kpAsterisk;
      case Arduino.kpMinus:
        return Keycode.kpMinus;
      case Arduino.kpPlus:
        return Keycode.kpPlus;
      case Arduino.kpEnter:
        return Keycode.kpEnter;
      case Arduino.kp1:
        return Keycode.kp1;
      case Arduino.kp2:
        return Keycode.kp2;
      case Arduino.kp3:
        return Keycode.kp3;
      case Arduino.kp4:
        return Keycode.kp4;
      case Arduino.kp5:
        return Keycode.kp5;
      case Arduino.kp6:
        return Keycode.kp6;
      case Arduino.kp7:
        return Keycode.kp7;
      case Arduino.kp8:
        return Keycode.kp8;
      case Arduino.kp9:
        return Keycode.kp9;
      case Arduino.kp0:
        return Keycode.kp0;
      case Arduino.kpDot:
        return Keycode.kpDot;
      case Arduino.esc:
        return Keycode.esc;
      case Arduino.f1:
        return Keycode.f1;
      case Arduino.f2:
        return Keycode.f2;
      case Arduino.f3:
        return Keycode.f3;
      case Arduino.f4:
        return Keycode.f4;
      case Arduino.f5:
        return Keycode.f5;
      case Arduino.f6:
        return Keycode.f6;
      case Arduino.f7:
        return Keycode.f7;
      case Arduino.f8:
        return Keycode.f8;
      case Arduino.f9:
        return Keycode.f9;
      case Arduino.f10:
        return Keycode.f10;
      case Arduino.f11:
        return Keycode.f11;
      case Arduino.f12:
        return Keycode.f12;
      case Arduino.f13:
        return Keycode.f13;
      case Arduino.f14:
        return Keycode.f14;
      case Arduino.f15:
        return Keycode.f15;
      case Arduino.f16:
        return Keycode.f16;
      case Arduino.f17:
        return Keycode.f17;
      case Arduino.f18:
        return Keycode.f18;
      case Arduino.f19:
        return Keycode.f19;
      case Arduino.f20:
        return Keycode.f20;
      case Arduino.f21:
        return Keycode.f21;
      case Arduino.f22:
        return Keycode.f22;
      case Arduino.f23:
        return Keycode.f23;
      case Arduino.f24:
        return Keycode.f24;
      case Arduino.printScreen:
        return Keycode.printScreen;
      case Arduino.scrollLock:
        return Keycode.scrollLock;
      case Arduino.pause:
        return Keycode.pause;
      case Arduino.a:
        return Keycode.a;
      case Arduino.b:
        return Keycode.b;
      case Arduino.c:
        return Keycode.c;
      case Arduino.d:
        return Keycode.d;
      case Arduino.e:
        return Keycode.e;
      case Arduino.f:
        return Keycode.f;
      case Arduino.g:
        return Keycode.g;
      case Arduino.h:
        return Keycode.h;
      case Arduino.i:
        return Keycode.i;
      case Arduino.j:
        return Keycode.j;
      case Arduino.k:
        return Keycode.k;
      case Arduino.l:
        return Keycode.l;
      case Arduino.m:
        return Keycode.m;
      case Arduino.n:
        return Keycode.n;
      case Arduino.o:
        return Keycode.o;
      case Arduino.p:
        return Keycode.p;
      case Arduino.q:
        return Keycode.q;
      case Arduino.r:
        return Keycode.r;
      case Arduino.s:
        return Keycode.s;
      case Arduino.t:
        return Keycode.t;
      case Arduino.u:
        return Keycode.u;
      case Arduino.v:
        return Keycode.v;
      case Arduino.w:
        return Keycode.w;
      case Arduino.x:
        return Keycode.x;
      case Arduino.y:
        return Keycode.y;
      case Arduino.z:
        return Keycode.z;
      default:
        return Keycode.undefined;
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

  static Keycode toKey(int code) {
    if (code == Flutter.leftCtrl) {
      return Keycode.leftCtrl;
    }
    if (code == Flutter.leftShift) {
      return Keycode.leftShift;
    }
    if (code == Flutter.leftAlt) {
      return Keycode.leftAlt;
    }
    if (code == Flutter.leftGui) {
      return Keycode.leftGui;
    }
    if (code == Flutter.rightCtrl) {
      return Keycode.rightCtrl;
    }
    if (code == Flutter.rightShift) {
      return Keycode.rightShift;
    }
    if (code == Flutter.rightAlt) {
      return Keycode.rightAlt;
    }
    if (code == Flutter.rightGui) {
      return Keycode.rightGui;
    }
    if (code == Flutter.tab) {
      return Keycode.tab;
    }
    if (code == Flutter.capslock) {
      return Keycode.capslock;
    }
    if (code == Flutter.backspace) {
      return Keycode.backspace;
    }
    if (code == Flutter.enter) {
      return Keycode.enter;
    }
    if (code == Flutter.menu) {
      return Keycode.menu;
    }
    if (code == Flutter.insert) {
      return Keycode.insert;
    }
    if (code == Flutter.delete) {
      return Keycode.delete;
    }
    if (code == Flutter.home) {
      return Keycode.home;
    }
    if (code == Flutter.end) {
      return Keycode.end;
    }
    if (code == Flutter.pageUp) {
      return Keycode.pageUp;
    }
    if (code == Flutter.pageDown) {
      return Keycode.pageDown;
    }
    if (code == Flutter.upArrow) {
      return Keycode.upArrow;
    }
    if (code == Flutter.downArrow) {
      return Keycode.downArrow;
    }
    if (code == Flutter.leftArrow) {
      return Keycode.leftArrow;
    }
    if (code == Flutter.rightArrow) {
      return Keycode.rightArrow;
    }
    if (code == Flutter.numLock) {
      return Keycode.numLock;
    }
    if (code == Flutter.kpSlash) {
      return Keycode.kpSlash;
    }
    if (code == Flutter.kpAsterisk) {
      return Keycode.kpAsterisk;
    }
    if (code == Flutter.kpMinus) {
      return Keycode.kpMinus;
    }
    if (code == Flutter.kpPlus) {
      return Keycode.kpPlus;
    }
    if (code == Flutter.kpEnter) {
      return Keycode.kpEnter;
    }
    if (code == Flutter.kp1) {
      return Keycode.kp1;
    }
    if (code == Flutter.kp2) {
      return Keycode.kp2;
    }
    if (code == Flutter.kp3) {
      return Keycode.kp3;
    }
    if (code == Flutter.kp4) {
      return Keycode.kp4;
    }
    if (code == Flutter.kp5) {
      return Keycode.kp5;
    }
    if (code == Flutter.kp6) {
      return Keycode.kp6;
    }
    if (code == Flutter.kp7) {
      return Keycode.kp7;
    }
    if (code == Flutter.kp8) {
      return Keycode.kp8;
    }
    if (code == Flutter.kp9) {
      return Keycode.kp9;
    }
    if (code == Flutter.kp0) {
      return Keycode.kp0;
    }
    if (code == Flutter.kpDot) {
      return Keycode.kpDot;
    }
    if (code == Flutter.esc) {
      return Keycode.esc;
    }
    if (code == Flutter.f1) {
      return Keycode.f1;
    }
    if (code == Flutter.f2) {
      return Keycode.f2;
    }
    if (code == Flutter.f3) {
      return Keycode.f3;
    }
    if (code == Flutter.f4) {
      return Keycode.f4;
    }
    if (code == Flutter.f5) {
      return Keycode.f5;
    }
    if (code == Flutter.f6) {
      return Keycode.f6;
    }
    if (code == Flutter.f7) {
      return Keycode.f7;
    }
    if (code == Flutter.f8) {
      return Keycode.f8;
    }
    if (code == Flutter.f9) {
      return Keycode.f9;
    }
    if (code == Flutter.f10) {
      return Keycode.f10;
    }
    if (code == Flutter.f11) {
      return Keycode.f11;
    }
    if (code == Flutter.f12) {
      return Keycode.f12;
    }
    if (code == Flutter.f13) {
      return Keycode.f13;
    }
    if (code == Flutter.f14) {
      return Keycode.f14;
    }
    if (code == Flutter.f15) {
      return Keycode.f15;
    }
    if (code == Flutter.f16) {
      return Keycode.f16;
    }
    if (code == Flutter.f17) {
      return Keycode.f17;
    }
    if (code == Flutter.f18) {
      return Keycode.f18;
    }
    if (code == Flutter.f19) {
      return Keycode.f19;
    }
    if (code == Flutter.f20) {
      return Keycode.f20;
    }
    if (code == Flutter.f21) {
      return Keycode.f21;
    }
    if (code == Flutter.f22) {
      return Keycode.f22;
    }
    if (code == Flutter.f23) {
      return Keycode.f23;
    }
    if (code == Flutter.f24) {
      return Keycode.f24;
    }
    if (code == Flutter.printScreen) {
      return Keycode.printScreen;
    }
    if (code == Flutter.scrollLock) {
      return Keycode.scrollLock;
    }
    if (code == Flutter.pause) {
      return Keycode.pause;
    }
    if (code == Flutter.a) {
      return Keycode.a;
    }
    if (code == Flutter.b) {
      return Keycode.b;
    }
    if (code == Flutter.c) {
      return Keycode.c;
    }
    if (code == Flutter.d) {
      return Keycode.d;
    }
    if (code == Flutter.e) {
      return Keycode.e;
    }
    if (code == Flutter.f) {
      return Keycode.f;
    }
    if (code == Flutter.g) {
      return Keycode.g;
    }
    if (code == Flutter.h) {
      return Keycode.h;
    }
    if (code == Flutter.i) {
      return Keycode.i;
    }
    if (code == Flutter.j) {
      return Keycode.j;
    }
    if (code == Flutter.k) {
      return Keycode.k;
    }
    if (code == Flutter.l) {
      return Keycode.l;
    }
    if (code == Flutter.m) {
      return Keycode.m;
    }
    if (code == Flutter.n) {
      return Keycode.n;
    }
    if (code == Flutter.o) {
      return Keycode.o;
    }
    if (code == Flutter.p) {
      return Keycode.p;
    }
    if (code == Flutter.q) {
      return Keycode.q;
    }
    if (code == Flutter.r) {
      return Keycode.r;
    }
    if (code == Flutter.s) {
      return Keycode.s;
    }
    if (code == Flutter.t) {
      return Keycode.t;
    }
    if (code == Flutter.u) {
      return Keycode.u;
    }
    if (code == Flutter.v) {
      return Keycode.v;
    }
    if (code == Flutter.w) {
      return Keycode.w;
    }
    if (code == Flutter.x) {
      return Keycode.x;
    }
    if (code == Flutter.y) {
      return Keycode.y;
    }
    if (code == Flutter.z) {
      return Keycode.z;
    }
    return Keycode.undefined;
  }
}

Map<Keycode, int> keyToArduino = {
  Keycode.leftCtrl: Arduino.leftCtrl,
  Keycode.leftShift: Arduino.leftShift,
  Keycode.leftAlt: Arduino.leftAlt,
  Keycode.leftGui: Arduino.leftGui,
  Keycode.rightCtrl: Arduino.rightCtrl,
  Keycode.rightShift: Arduino.rightShift,
  Keycode.rightAlt: Arduino.rightAlt,
  Keycode.rightGui: Arduino.rightGui,
  Keycode.tab: Arduino.tab,
  Keycode.capslock: Arduino.capslock,
  Keycode.backspace: Arduino.backspace,
  Keycode.enter: Arduino.enter,
  Keycode.menu: Arduino.menu,
  Keycode.insert: Arduino.insert,
  Keycode.delete: Arduino.delete,
  Keycode.home: Arduino.home,
  Keycode.end: Arduino.end,
  Keycode.pageUp: Arduino.pageUp,
  Keycode.pageDown: Arduino.pageDown,
  Keycode.upArrow: Arduino.upArrow,
  Keycode.downArrow: Arduino.downArrow,
  Keycode.leftArrow: Arduino.leftArrow,
  Keycode.rightArrow: Arduino.rightArrow,
  Keycode.numLock: Arduino.numLock,
  Keycode.kpSlash: Arduino.kpSlash,
  Keycode.kpAsterisk: Arduino.kpAsterisk,
  Keycode.kpMinus: Arduino.kpMinus,
  Keycode.kpPlus: Arduino.kpPlus,
  Keycode.kpEnter: Arduino.kpEnter,
  Keycode.kp1: Arduino.kp1,
  Keycode.kp2: Arduino.kp2,
  Keycode.kp3: Arduino.kp3,
  Keycode.kp4: Arduino.kp4,
  Keycode.kp5: Arduino.kp5,
  Keycode.kp6: Arduino.kp6,
  Keycode.kp7: Arduino.kp7,
  Keycode.kp8: Arduino.kp8,
  Keycode.kp9: Arduino.kp9,
  Keycode.kp0: Arduino.kp0,
  Keycode.kpDot: Arduino.kpDot,
  Keycode.esc: Arduino.esc,
  Keycode.f1: Arduino.f1,
  Keycode.f2: Arduino.f2,
  Keycode.f3: Arduino.f3,
  Keycode.f4: Arduino.f4,
  Keycode.f5: Arduino.f5,
  Keycode.f6: Arduino.f6,
  Keycode.f7: Arduino.f7,
  Keycode.f8: Arduino.f8,
  Keycode.f9: Arduino.f9,
  Keycode.f10: Arduino.f10,
  Keycode.f11: Arduino.f11,
  Keycode.f12: Arduino.f12,
  Keycode.f13: Arduino.f13,
  Keycode.f14: Arduino.f14,
  Keycode.f15: Arduino.f15,
  Keycode.f16: Arduino.f16,
  Keycode.f17: Arduino.f17,
  Keycode.f18: Arduino.f18,
  Keycode.f19: Arduino.f19,
  Keycode.f20: Arduino.f20,
  Keycode.f21: Arduino.f21,
  Keycode.f22: Arduino.f22,
  Keycode.f23: Arduino.f23,
  Keycode.f24: Arduino.f24,
  Keycode.printScreen: Arduino.printScreen,
  Keycode.scrollLock: Arduino.scrollLock,
  Keycode.pause: Arduino.pause,
  Keycode.a: Arduino.a,
  Keycode.b: Arduino.b,
  Keycode.c: Arduino.c,
  Keycode.d: Arduino.d,
  Keycode.e: Arduino.e,
  Keycode.f: Arduino.f,
  Keycode.g: Arduino.g,
  Keycode.h: Arduino.h,
  Keycode.i: Arduino.i,
  Keycode.j: Arduino.j,
  Keycode.k: Arduino.k,
  Keycode.l: Arduino.l,
  Keycode.m: Arduino.m,
  Keycode.n: Arduino.n,
  Keycode.o: Arduino.o,
  Keycode.p: Arduino.p,
  Keycode.q: Arduino.q,
  Keycode.r: Arduino.r,
  Keycode.s: Arduino.s,
  Keycode.t: Arduino.t,
  Keycode.u: Arduino.u,
  Keycode.v: Arduino.v,
  Keycode.w: Arduino.w,
  Keycode.x: Arduino.x,
  Keycode.y: Arduino.y,
  Keycode.z: Arduino.z,
  Keycode.undefined: -1,
};

Map<Keycode, int> keyToFlutter = {
  Keycode.leftCtrl: Flutter.leftCtrl,
  Keycode.leftShift: Flutter.leftShift,
  Keycode.leftAlt: Flutter.leftAlt,
  Keycode.leftGui: Flutter.leftGui,
  Keycode.rightCtrl: Flutter.rightCtrl,
  Keycode.rightShift: Flutter.rightShift,
  Keycode.rightAlt: Flutter.rightAlt,
  Keycode.rightGui: Flutter.rightGui,
  Keycode.tab: Flutter.tab,
  Keycode.capslock: Flutter.capslock,
  Keycode.backspace: Flutter.backspace,
  Keycode.enter: Flutter.enter,
  Keycode.menu: Flutter.menu,
  Keycode.insert: Flutter.insert,
  Keycode.delete: Flutter.delete,
  Keycode.home: Flutter.home,
  Keycode.end: Flutter.end,
  Keycode.pageUp: Flutter.pageUp,
  Keycode.pageDown: Flutter.pageDown,
  Keycode.upArrow: Flutter.upArrow,
  Keycode.downArrow: Flutter.downArrow,
  Keycode.leftArrow: Flutter.leftArrow,
  Keycode.rightArrow: Flutter.rightArrow,
  Keycode.numLock: Flutter.numLock,
  Keycode.kpSlash: Flutter.kpSlash,
  Keycode.kpAsterisk: Flutter.kpAsterisk,
  Keycode.kpMinus: Flutter.kpMinus,
  Keycode.kpPlus: Flutter.kpPlus,
  Keycode.kpEnter: Flutter.kpEnter,
  Keycode.kp1: Flutter.kp1,
  Keycode.kp2: Flutter.kp2,
  Keycode.kp3: Flutter.kp3,
  Keycode.kp4: Flutter.kp4,
  Keycode.kp5: Flutter.kp5,
  Keycode.kp6: Flutter.kp6,
  Keycode.kp7: Flutter.kp7,
  Keycode.kp8: Flutter.kp8,
  Keycode.kp9: Flutter.kp9,
  Keycode.kp0: Flutter.kp0,
  Keycode.kpDot: Flutter.kpDot,
  Keycode.esc: Flutter.esc,
  Keycode.f1: Flutter.f1,
  Keycode.f2: Flutter.f2,
  Keycode.f3: Flutter.f3,
  Keycode.f4: Flutter.f4,
  Keycode.f5: Flutter.f5,
  Keycode.f6: Flutter.f6,
  Keycode.f7: Flutter.f7,
  Keycode.f8: Flutter.f8,
  Keycode.f9: Flutter.f9,
  Keycode.f10: Flutter.f10,
  Keycode.f11: Flutter.f11,
  Keycode.f12: Flutter.f12,
  Keycode.f13: Flutter.f13,
  Keycode.f14: Flutter.f14,
  Keycode.f15: Flutter.f15,
  Keycode.f16: Flutter.f16,
  Keycode.f17: Flutter.f17,
  Keycode.f18: Flutter.f18,
  Keycode.f19: Flutter.f19,
  Keycode.f20: Flutter.f20,
  Keycode.f21: Flutter.f21,
  Keycode.f22: Flutter.f22,
  Keycode.f23: Flutter.f23,
  Keycode.f24: Flutter.f24,
  Keycode.printScreen: Flutter.printScreen,
  Keycode.scrollLock: Flutter.scrollLock,
  Keycode.pause: Flutter.pause,
  Keycode.a: Flutter.a,
  Keycode.b: Flutter.b,
  Keycode.c: Flutter.c,
  Keycode.d: Flutter.d,
  Keycode.e: Flutter.e,
  Keycode.f: Flutter.f,
  Keycode.g: Flutter.g,
  Keycode.h: Flutter.h,
  Keycode.i: Flutter.i,
  Keycode.j: Flutter.j,
  Keycode.k: Flutter.k,
  Keycode.l: Flutter.l,
  Keycode.m: Flutter.m,
  Keycode.n: Flutter.n,
  Keycode.o: Flutter.o,
  Keycode.p: Flutter.p,
  Keycode.q: Flutter.q,
  Keycode.r: Flutter.r,
  Keycode.s: Flutter.s,
  Keycode.t: Flutter.t,
  Keycode.u: Flutter.u,
  Keycode.v: Flutter.v,
  Keycode.w: Flutter.w,
  Keycode.x: Flutter.x,
  Keycode.y: Flutter.y,
  Keycode.z: Flutter.z,
  Keycode.undefined: -1,
};
