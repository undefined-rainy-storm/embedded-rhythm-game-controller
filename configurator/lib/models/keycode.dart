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

class ArduinoKeycode {
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
      case ArduinoKeycode.leftCtrl:
        return Keycode.leftCtrl;
      case ArduinoKeycode.leftShift:
        return Keycode.leftShift;
      case ArduinoKeycode.leftAlt:
        return Keycode.leftAlt;
      case ArduinoKeycode.leftGui:
        return Keycode.leftGui;
      case ArduinoKeycode.rightCtrl:
        return Keycode.rightCtrl;
      case ArduinoKeycode.rightShift:
        return Keycode.rightShift;
      case ArduinoKeycode.rightAlt:
        return Keycode.rightAlt;
      case ArduinoKeycode.rightGui:
        return Keycode.rightGui;
      case ArduinoKeycode.tab:
        return Keycode.tab;
      case ArduinoKeycode.capslock:
        return Keycode.capslock;
      case ArduinoKeycode.backspace:
        return Keycode.backspace;
      case ArduinoKeycode.enter:
        return Keycode.enter;
      case ArduinoKeycode.menu:
        return Keycode.menu;
      case ArduinoKeycode.insert:
        return Keycode.insert;
      case ArduinoKeycode.delete:
        return Keycode.delete;
      case ArduinoKeycode.home:
        return Keycode.home;
      case ArduinoKeycode.end:
        return Keycode.end;
      case ArduinoKeycode.pageUp:
        return Keycode.pageUp;
      case ArduinoKeycode.pageDown:
        return Keycode.pageDown;
      case ArduinoKeycode.upArrow:
        return Keycode.upArrow;
      case ArduinoKeycode.downArrow:
        return Keycode.downArrow;
      case ArduinoKeycode.leftArrow:
        return Keycode.leftArrow;
      case ArduinoKeycode.rightArrow:
        return Keycode.rightArrow;
      case ArduinoKeycode.numLock:
        return Keycode.numLock;
      case ArduinoKeycode.kpSlash:
        return Keycode.kpSlash;
      case ArduinoKeycode.kpAsterisk:
        return Keycode.kpAsterisk;
      case ArduinoKeycode.kpMinus:
        return Keycode.kpMinus;
      case ArduinoKeycode.kpPlus:
        return Keycode.kpPlus;
      case ArduinoKeycode.kpEnter:
        return Keycode.kpEnter;
      case ArduinoKeycode.kp1:
        return Keycode.kp1;
      case ArduinoKeycode.kp2:
        return Keycode.kp2;
      case ArduinoKeycode.kp3:
        return Keycode.kp3;
      case ArduinoKeycode.kp4:
        return Keycode.kp4;
      case ArduinoKeycode.kp5:
        return Keycode.kp5;
      case ArduinoKeycode.kp6:
        return Keycode.kp6;
      case ArduinoKeycode.kp7:
        return Keycode.kp7;
      case ArduinoKeycode.kp8:
        return Keycode.kp8;
      case ArduinoKeycode.kp9:
        return Keycode.kp9;
      case ArduinoKeycode.kp0:
        return Keycode.kp0;
      case ArduinoKeycode.kpDot:
        return Keycode.kpDot;
      case ArduinoKeycode.esc:
        return Keycode.esc;
      case ArduinoKeycode.f1:
        return Keycode.f1;
      case ArduinoKeycode.f2:
        return Keycode.f2;
      case ArduinoKeycode.f3:
        return Keycode.f3;
      case ArduinoKeycode.f4:
        return Keycode.f4;
      case ArduinoKeycode.f5:
        return Keycode.f5;
      case ArduinoKeycode.f6:
        return Keycode.f6;
      case ArduinoKeycode.f7:
        return Keycode.f7;
      case ArduinoKeycode.f8:
        return Keycode.f8;
      case ArduinoKeycode.f9:
        return Keycode.f9;
      case ArduinoKeycode.f10:
        return Keycode.f10;
      case ArduinoKeycode.f11:
        return Keycode.f11;
      case ArduinoKeycode.f12:
        return Keycode.f12;
      case ArduinoKeycode.f13:
        return Keycode.f13;
      case ArduinoKeycode.f14:
        return Keycode.f14;
      case ArduinoKeycode.f15:
        return Keycode.f15;
      case ArduinoKeycode.f16:
        return Keycode.f16;
      case ArduinoKeycode.f17:
        return Keycode.f17;
      case ArduinoKeycode.f18:
        return Keycode.f18;
      case ArduinoKeycode.f19:
        return Keycode.f19;
      case ArduinoKeycode.f20:
        return Keycode.f20;
      case ArduinoKeycode.f21:
        return Keycode.f21;
      case ArduinoKeycode.f22:
        return Keycode.f22;
      case ArduinoKeycode.f23:
        return Keycode.f23;
      case ArduinoKeycode.f24:
        return Keycode.f24;
      case ArduinoKeycode.printScreen:
        return Keycode.printScreen;
      case ArduinoKeycode.scrollLock:
        return Keycode.scrollLock;
      case ArduinoKeycode.pause:
        return Keycode.pause;
      case ArduinoKeycode.a:
        return Keycode.a;
      case ArduinoKeycode.b:
        return Keycode.b;
      case ArduinoKeycode.c:
        return Keycode.c;
      case ArduinoKeycode.d:
        return Keycode.d;
      case ArduinoKeycode.e:
        return Keycode.e;
      case ArduinoKeycode.f:
        return Keycode.f;
      case ArduinoKeycode.g:
        return Keycode.g;
      case ArduinoKeycode.h:
        return Keycode.h;
      case ArduinoKeycode.i:
        return Keycode.i;
      case ArduinoKeycode.j:
        return Keycode.j;
      case ArduinoKeycode.k:
        return Keycode.k;
      case ArduinoKeycode.l:
        return Keycode.l;
      case ArduinoKeycode.m:
        return Keycode.m;
      case ArduinoKeycode.n:
        return Keycode.n;
      case ArduinoKeycode.o:
        return Keycode.o;
      case ArduinoKeycode.p:
        return Keycode.p;
      case ArduinoKeycode.q:
        return Keycode.q;
      case ArduinoKeycode.r:
        return Keycode.r;
      case ArduinoKeycode.s:
        return Keycode.s;
      case ArduinoKeycode.t:
        return Keycode.t;
      case ArduinoKeycode.u:
        return Keycode.u;
      case ArduinoKeycode.v:
        return Keycode.v;
      case ArduinoKeycode.w:
        return Keycode.w;
      case ArduinoKeycode.x:
        return Keycode.x;
      case ArduinoKeycode.y:
        return Keycode.y;
      case ArduinoKeycode.z:
        return Keycode.z;
      default:
        return Keycode.undefined;
    }
  }
}

class FlutterKeycode {
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

  static Keycode toKeycode(int code) {
    if (code == FlutterKeycode.leftCtrl) {
      return Keycode.leftCtrl;
    }
    if (code == FlutterKeycode.leftShift) {
      return Keycode.leftShift;
    }
    if (code == FlutterKeycode.leftAlt) {
      return Keycode.leftAlt;
    }
    if (code == FlutterKeycode.leftGui) {
      return Keycode.leftGui;
    }
    if (code == FlutterKeycode.rightCtrl) {
      return Keycode.rightCtrl;
    }
    if (code == FlutterKeycode.rightShift) {
      return Keycode.rightShift;
    }
    if (code == FlutterKeycode.rightAlt) {
      return Keycode.rightAlt;
    }
    if (code == FlutterKeycode.rightGui) {
      return Keycode.rightGui;
    }
    if (code == FlutterKeycode.tab) {
      return Keycode.tab;
    }
    if (code == FlutterKeycode.capslock) {
      return Keycode.capslock;
    }
    if (code == FlutterKeycode.backspace) {
      return Keycode.backspace;
    }
    if (code == FlutterKeycode.enter) {
      return Keycode.enter;
    }
    if (code == FlutterKeycode.menu) {
      return Keycode.menu;
    }
    if (code == FlutterKeycode.insert) {
      return Keycode.insert;
    }
    if (code == FlutterKeycode.delete) {
      return Keycode.delete;
    }
    if (code == FlutterKeycode.home) {
      return Keycode.home;
    }
    if (code == FlutterKeycode.end) {
      return Keycode.end;
    }
    if (code == FlutterKeycode.pageUp) {
      return Keycode.pageUp;
    }
    if (code == FlutterKeycode.pageDown) {
      return Keycode.pageDown;
    }
    if (code == FlutterKeycode.upArrow) {
      return Keycode.upArrow;
    }
    if (code == FlutterKeycode.downArrow) {
      return Keycode.downArrow;
    }
    if (code == FlutterKeycode.leftArrow) {
      return Keycode.leftArrow;
    }
    if (code == FlutterKeycode.rightArrow) {
      return Keycode.rightArrow;
    }
    if (code == FlutterKeycode.numLock) {
      return Keycode.numLock;
    }
    if (code == FlutterKeycode.kpSlash) {
      return Keycode.kpSlash;
    }
    if (code == FlutterKeycode.kpAsterisk) {
      return Keycode.kpAsterisk;
    }
    if (code == FlutterKeycode.kpMinus) {
      return Keycode.kpMinus;
    }
    if (code == FlutterKeycode.kpPlus) {
      return Keycode.kpPlus;
    }
    if (code == FlutterKeycode.kpEnter) {
      return Keycode.kpEnter;
    }
    if (code == FlutterKeycode.kp1) {
      return Keycode.kp1;
    }
    if (code == FlutterKeycode.kp2) {
      return Keycode.kp2;
    }
    if (code == FlutterKeycode.kp3) {
      return Keycode.kp3;
    }
    if (code == FlutterKeycode.kp4) {
      return Keycode.kp4;
    }
    if (code == FlutterKeycode.kp5) {
      return Keycode.kp5;
    }
    if (code == FlutterKeycode.kp6) {
      return Keycode.kp6;
    }
    if (code == FlutterKeycode.kp7) {
      return Keycode.kp7;
    }
    if (code == FlutterKeycode.kp8) {
      return Keycode.kp8;
    }
    if (code == FlutterKeycode.kp9) {
      return Keycode.kp9;
    }
    if (code == FlutterKeycode.kp0) {
      return Keycode.kp0;
    }
    if (code == FlutterKeycode.kpDot) {
      return Keycode.kpDot;
    }
    if (code == FlutterKeycode.esc) {
      return Keycode.esc;
    }
    if (code == FlutterKeycode.f1) {
      return Keycode.f1;
    }
    if (code == FlutterKeycode.f2) {
      return Keycode.f2;
    }
    if (code == FlutterKeycode.f3) {
      return Keycode.f3;
    }
    if (code == FlutterKeycode.f4) {
      return Keycode.f4;
    }
    if (code == FlutterKeycode.f5) {
      return Keycode.f5;
    }
    if (code == FlutterKeycode.f6) {
      return Keycode.f6;
    }
    if (code == FlutterKeycode.f7) {
      return Keycode.f7;
    }
    if (code == FlutterKeycode.f8) {
      return Keycode.f8;
    }
    if (code == FlutterKeycode.f9) {
      return Keycode.f9;
    }
    if (code == FlutterKeycode.f10) {
      return Keycode.f10;
    }
    if (code == FlutterKeycode.f11) {
      return Keycode.f11;
    }
    if (code == FlutterKeycode.f12) {
      return Keycode.f12;
    }
    if (code == FlutterKeycode.f13) {
      return Keycode.f13;
    }
    if (code == FlutterKeycode.f14) {
      return Keycode.f14;
    }
    if (code == FlutterKeycode.f15) {
      return Keycode.f15;
    }
    if (code == FlutterKeycode.f16) {
      return Keycode.f16;
    }
    if (code == FlutterKeycode.f17) {
      return Keycode.f17;
    }
    if (code == FlutterKeycode.f18) {
      return Keycode.f18;
    }
    if (code == FlutterKeycode.f19) {
      return Keycode.f19;
    }
    if (code == FlutterKeycode.f20) {
      return Keycode.f20;
    }
    if (code == FlutterKeycode.f21) {
      return Keycode.f21;
    }
    if (code == FlutterKeycode.f22) {
      return Keycode.f22;
    }
    if (code == FlutterKeycode.f23) {
      return Keycode.f23;
    }
    if (code == FlutterKeycode.f24) {
      return Keycode.f24;
    }
    if (code == FlutterKeycode.printScreen) {
      return Keycode.printScreen;
    }
    if (code == FlutterKeycode.scrollLock) {
      return Keycode.scrollLock;
    }
    if (code == FlutterKeycode.pause) {
      return Keycode.pause;
    }
    if (code == FlutterKeycode.a) {
      return Keycode.a;
    }
    if (code == FlutterKeycode.b) {
      return Keycode.b;
    }
    if (code == FlutterKeycode.c) {
      return Keycode.c;
    }
    if (code == FlutterKeycode.d) {
      return Keycode.d;
    }
    if (code == FlutterKeycode.e) {
      return Keycode.e;
    }
    if (code == FlutterKeycode.f) {
      return Keycode.f;
    }
    if (code == FlutterKeycode.g) {
      return Keycode.g;
    }
    if (code == FlutterKeycode.h) {
      return Keycode.h;
    }
    if (code == FlutterKeycode.i) {
      return Keycode.i;
    }
    if (code == FlutterKeycode.j) {
      return Keycode.j;
    }
    if (code == FlutterKeycode.k) {
      return Keycode.k;
    }
    if (code == FlutterKeycode.l) {
      return Keycode.l;
    }
    if (code == FlutterKeycode.m) {
      return Keycode.m;
    }
    if (code == FlutterKeycode.n) {
      return Keycode.n;
    }
    if (code == FlutterKeycode.o) {
      return Keycode.o;
    }
    if (code == FlutterKeycode.p) {
      return Keycode.p;
    }
    if (code == FlutterKeycode.q) {
      return Keycode.q;
    }
    if (code == FlutterKeycode.r) {
      return Keycode.r;
    }
    if (code == FlutterKeycode.s) {
      return Keycode.s;
    }
    if (code == FlutterKeycode.t) {
      return Keycode.t;
    }
    if (code == FlutterKeycode.u) {
      return Keycode.u;
    }
    if (code == FlutterKeycode.v) {
      return Keycode.v;
    }
    if (code == FlutterKeycode.w) {
      return Keycode.w;
    }
    if (code == FlutterKeycode.x) {
      return Keycode.x;
    }
    if (code == FlutterKeycode.y) {
      return Keycode.y;
    }
    if (code == FlutterKeycode.z) {
      return Keycode.z;
    }
    return Keycode.undefined;
  }
}

final Map<Keycode, int> keyToArduinoKeycode = {
  Keycode.leftCtrl: ArduinoKeycode.leftCtrl,
  Keycode.leftShift: ArduinoKeycode.leftShift,
  Keycode.leftAlt: ArduinoKeycode.leftAlt,
  Keycode.leftGui: ArduinoKeycode.leftGui,
  Keycode.rightCtrl: ArduinoKeycode.rightCtrl,
  Keycode.rightShift: ArduinoKeycode.rightShift,
  Keycode.rightAlt: ArduinoKeycode.rightAlt,
  Keycode.rightGui: ArduinoKeycode.rightGui,
  Keycode.tab: ArduinoKeycode.tab,
  Keycode.capslock: ArduinoKeycode.capslock,
  Keycode.backspace: ArduinoKeycode.backspace,
  Keycode.enter: ArduinoKeycode.enter,
  Keycode.menu: ArduinoKeycode.menu,
  Keycode.insert: ArduinoKeycode.insert,
  Keycode.delete: ArduinoKeycode.delete,
  Keycode.home: ArduinoKeycode.home,
  Keycode.end: ArduinoKeycode.end,
  Keycode.pageUp: ArduinoKeycode.pageUp,
  Keycode.pageDown: ArduinoKeycode.pageDown,
  Keycode.upArrow: ArduinoKeycode.upArrow,
  Keycode.downArrow: ArduinoKeycode.downArrow,
  Keycode.leftArrow: ArduinoKeycode.leftArrow,
  Keycode.rightArrow: ArduinoKeycode.rightArrow,
  Keycode.numLock: ArduinoKeycode.numLock,
  Keycode.kpSlash: ArduinoKeycode.kpSlash,
  Keycode.kpAsterisk: ArduinoKeycode.kpAsterisk,
  Keycode.kpMinus: ArduinoKeycode.kpMinus,
  Keycode.kpPlus: ArduinoKeycode.kpPlus,
  Keycode.kpEnter: ArduinoKeycode.kpEnter,
  Keycode.kp1: ArduinoKeycode.kp1,
  Keycode.kp2: ArduinoKeycode.kp2,
  Keycode.kp3: ArduinoKeycode.kp3,
  Keycode.kp4: ArduinoKeycode.kp4,
  Keycode.kp5: ArduinoKeycode.kp5,
  Keycode.kp6: ArduinoKeycode.kp6,
  Keycode.kp7: ArduinoKeycode.kp7,
  Keycode.kp8: ArduinoKeycode.kp8,
  Keycode.kp9: ArduinoKeycode.kp9,
  Keycode.kp0: ArduinoKeycode.kp0,
  Keycode.kpDot: ArduinoKeycode.kpDot,
  Keycode.esc: ArduinoKeycode.esc,
  Keycode.f1: ArduinoKeycode.f1,
  Keycode.f2: ArduinoKeycode.f2,
  Keycode.f3: ArduinoKeycode.f3,
  Keycode.f4: ArduinoKeycode.f4,
  Keycode.f5: ArduinoKeycode.f5,
  Keycode.f6: ArduinoKeycode.f6,
  Keycode.f7: ArduinoKeycode.f7,
  Keycode.f8: ArduinoKeycode.f8,
  Keycode.f9: ArduinoKeycode.f9,
  Keycode.f10: ArduinoKeycode.f10,
  Keycode.f11: ArduinoKeycode.f11,
  Keycode.f12: ArduinoKeycode.f12,
  Keycode.f13: ArduinoKeycode.f13,
  Keycode.f14: ArduinoKeycode.f14,
  Keycode.f15: ArduinoKeycode.f15,
  Keycode.f16: ArduinoKeycode.f16,
  Keycode.f17: ArduinoKeycode.f17,
  Keycode.f18: ArduinoKeycode.f18,
  Keycode.f19: ArduinoKeycode.f19,
  Keycode.f20: ArduinoKeycode.f20,
  Keycode.f21: ArduinoKeycode.f21,
  Keycode.f22: ArduinoKeycode.f22,
  Keycode.f23: ArduinoKeycode.f23,
  Keycode.f24: ArduinoKeycode.f24,
  Keycode.printScreen: ArduinoKeycode.printScreen,
  Keycode.scrollLock: ArduinoKeycode.scrollLock,
  Keycode.pause: ArduinoKeycode.pause,
  Keycode.a: ArduinoKeycode.a,
  Keycode.b: ArduinoKeycode.b,
  Keycode.c: ArduinoKeycode.c,
  Keycode.d: ArduinoKeycode.d,
  Keycode.e: ArduinoKeycode.e,
  Keycode.f: ArduinoKeycode.f,
  Keycode.g: ArduinoKeycode.g,
  Keycode.h: ArduinoKeycode.h,
  Keycode.i: ArduinoKeycode.i,
  Keycode.j: ArduinoKeycode.j,
  Keycode.k: ArduinoKeycode.k,
  Keycode.l: ArduinoKeycode.l,
  Keycode.m: ArduinoKeycode.m,
  Keycode.n: ArduinoKeycode.n,
  Keycode.o: ArduinoKeycode.o,
  Keycode.p: ArduinoKeycode.p,
  Keycode.q: ArduinoKeycode.q,
  Keycode.r: ArduinoKeycode.r,
  Keycode.s: ArduinoKeycode.s,
  Keycode.t: ArduinoKeycode.t,
  Keycode.u: ArduinoKeycode.u,
  Keycode.v: ArduinoKeycode.v,
  Keycode.w: ArduinoKeycode.w,
  Keycode.x: ArduinoKeycode.x,
  Keycode.y: ArduinoKeycode.y,
  Keycode.z: ArduinoKeycode.z,
  Keycode.undefined: -1,
};

final Map<Keycode, int> keyToFlutterKeycode = {
  Keycode.leftCtrl: FlutterKeycode.leftCtrl,
  Keycode.leftShift: FlutterKeycode.leftShift,
  Keycode.leftAlt: FlutterKeycode.leftAlt,
  Keycode.leftGui: FlutterKeycode.leftGui,
  Keycode.rightCtrl: FlutterKeycode.rightCtrl,
  Keycode.rightShift: FlutterKeycode.rightShift,
  Keycode.rightAlt: FlutterKeycode.rightAlt,
  Keycode.rightGui: FlutterKeycode.rightGui,
  Keycode.tab: FlutterKeycode.tab,
  Keycode.capslock: FlutterKeycode.capslock,
  Keycode.backspace: FlutterKeycode.backspace,
  Keycode.enter: FlutterKeycode.enter,
  Keycode.menu: FlutterKeycode.menu,
  Keycode.insert: FlutterKeycode.insert,
  Keycode.delete: FlutterKeycode.delete,
  Keycode.home: FlutterKeycode.home,
  Keycode.end: FlutterKeycode.end,
  Keycode.pageUp: FlutterKeycode.pageUp,
  Keycode.pageDown: FlutterKeycode.pageDown,
  Keycode.upArrow: FlutterKeycode.upArrow,
  Keycode.downArrow: FlutterKeycode.downArrow,
  Keycode.leftArrow: FlutterKeycode.leftArrow,
  Keycode.rightArrow: FlutterKeycode.rightArrow,
  Keycode.numLock: FlutterKeycode.numLock,
  Keycode.kpSlash: FlutterKeycode.kpSlash,
  Keycode.kpAsterisk: FlutterKeycode.kpAsterisk,
  Keycode.kpMinus: FlutterKeycode.kpMinus,
  Keycode.kpPlus: FlutterKeycode.kpPlus,
  Keycode.kpEnter: FlutterKeycode.kpEnter,
  Keycode.kp1: FlutterKeycode.kp1,
  Keycode.kp2: FlutterKeycode.kp2,
  Keycode.kp3: FlutterKeycode.kp3,
  Keycode.kp4: FlutterKeycode.kp4,
  Keycode.kp5: FlutterKeycode.kp5,
  Keycode.kp6: FlutterKeycode.kp6,
  Keycode.kp7: FlutterKeycode.kp7,
  Keycode.kp8: FlutterKeycode.kp8,
  Keycode.kp9: FlutterKeycode.kp9,
  Keycode.kp0: FlutterKeycode.kp0,
  Keycode.kpDot: FlutterKeycode.kpDot,
  Keycode.esc: FlutterKeycode.esc,
  Keycode.f1: FlutterKeycode.f1,
  Keycode.f2: FlutterKeycode.f2,
  Keycode.f3: FlutterKeycode.f3,
  Keycode.f4: FlutterKeycode.f4,
  Keycode.f5: FlutterKeycode.f5,
  Keycode.f6: FlutterKeycode.f6,
  Keycode.f7: FlutterKeycode.f7,
  Keycode.f8: FlutterKeycode.f8,
  Keycode.f9: FlutterKeycode.f9,
  Keycode.f10: FlutterKeycode.f10,
  Keycode.f11: FlutterKeycode.f11,
  Keycode.f12: FlutterKeycode.f12,
  Keycode.f13: FlutterKeycode.f13,
  Keycode.f14: FlutterKeycode.f14,
  Keycode.f15: FlutterKeycode.f15,
  Keycode.f16: FlutterKeycode.f16,
  Keycode.f17: FlutterKeycode.f17,
  Keycode.f18: FlutterKeycode.f18,
  Keycode.f19: FlutterKeycode.f19,
  Keycode.f20: FlutterKeycode.f20,
  Keycode.f21: FlutterKeycode.f21,
  Keycode.f22: FlutterKeycode.f22,
  Keycode.f23: FlutterKeycode.f23,
  Keycode.f24: FlutterKeycode.f24,
  Keycode.printScreen: FlutterKeycode.printScreen,
  Keycode.scrollLock: FlutterKeycode.scrollLock,
  Keycode.pause: FlutterKeycode.pause,
  Keycode.a: FlutterKeycode.a,
  Keycode.b: FlutterKeycode.b,
  Keycode.c: FlutterKeycode.c,
  Keycode.d: FlutterKeycode.d,
  Keycode.e: FlutterKeycode.e,
  Keycode.f: FlutterKeycode.f,
  Keycode.g: FlutterKeycode.g,
  Keycode.h: FlutterKeycode.h,
  Keycode.i: FlutterKeycode.i,
  Keycode.j: FlutterKeycode.j,
  Keycode.k: FlutterKeycode.k,
  Keycode.l: FlutterKeycode.l,
  Keycode.m: FlutterKeycode.m,
  Keycode.n: FlutterKeycode.n,
  Keycode.o: FlutterKeycode.o,
  Keycode.p: FlutterKeycode.p,
  Keycode.q: FlutterKeycode.q,
  Keycode.r: FlutterKeycode.r,
  Keycode.s: FlutterKeycode.s,
  Keycode.t: FlutterKeycode.t,
  Keycode.u: FlutterKeycode.u,
  Keycode.v: FlutterKeycode.v,
  Keycode.w: FlutterKeycode.w,
  Keycode.x: FlutterKeycode.x,
  Keycode.y: FlutterKeycode.y,
  Keycode.z: FlutterKeycode.z,
  Keycode.undefined: -1,
};
