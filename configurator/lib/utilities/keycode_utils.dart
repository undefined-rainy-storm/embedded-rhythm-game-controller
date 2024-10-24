import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:configurator/models/keycode.dart';
import 'package:flutter/material.dart';

class KeycodeUtils {
  static int toArduinoKeycode(Keycode keycode) {
    if (keyToArduinoKeycode.containsKey(keycode)) {
      return keyToArduinoKeycode[keycode]!;
    }
    return -1;
  }

  static int toFlutterKeycode(Keycode keycode) {
    if (keyToFlutterKeycode.containsKey(keycode)) {
      return keyToFlutterKeycode[keycode]!;
    }
    return -1;
  }

  static String toStringText(BuildContext context, Keycode code) {
    switch (code) {
      case Keycode.leftCtrl:
        return AppLocalizations.of(context)!.keycodeTextLeftCtrl;
      case Keycode.leftShift:
        return AppLocalizations.of(context)!.keycodeTextLeftShift;
      case Keycode.leftAlt:
        return AppLocalizations.of(context)!.keycodeTextLeftAlt;
      case Keycode.leftGui:
        return AppLocalizations.of(context)!.keycodeTextLeftGui;
      case Keycode.rightCtrl:
        return AppLocalizations.of(context)!.keycodeTextRightCtrl;
      case Keycode.rightShift:
        return AppLocalizations.of(context)!.keycodeTextRightShift;
      case Keycode.rightAlt:
        return AppLocalizations.of(context)!.keycodeTextRightAlt;
      case Keycode.rightGui:
        return AppLocalizations.of(context)!.keycodeTextRightGui;
      case Keycode.tab:
        return AppLocalizations.of(context)!.keycodeTextTab;
      case Keycode.capslock:
        return AppLocalizations.of(context)!.keycodeTextCapslock;
      case Keycode.backspace:
        return AppLocalizations.of(context)!.keycodeTextBackspace;
      case Keycode.enter:
        return AppLocalizations.of(context)!.keycodeTextEnter;
      case Keycode.menu:
        return AppLocalizations.of(context)!.keycodeTextMenu;
      case Keycode.insert:
        return AppLocalizations.of(context)!.keycodeTextInsert;
      case Keycode.delete:
        return AppLocalizations.of(context)!.keycodeTextDelete;
      case Keycode.home:
        return AppLocalizations.of(context)!.keycodeTextHome;
      case Keycode.end:
        return AppLocalizations.of(context)!.keycodeTextEnd;
      case Keycode.pageUp:
        return AppLocalizations.of(context)!.keycodeTextPageUp;
      case Keycode.pageDown:
        return AppLocalizations.of(context)!.keycodeTextPageDown;
      case Keycode.upArrow:
        return AppLocalizations.of(context)!.keycodeTextUpArrow;
      case Keycode.downArrow:
        return AppLocalizations.of(context)!.keycodeTextDownArrow;
      case Keycode.leftArrow:
        return AppLocalizations.of(context)!.keycodeTextLeftArrow;
      case Keycode.rightArrow:
        return AppLocalizations.of(context)!.keycodeTextRightArrow;
      case Keycode.numLock:
        return AppLocalizations.of(context)!.keycodeTextNumLock;
      case Keycode.kpSlash:
        return AppLocalizations.of(context)!.keycodeTextKpSlash;
      case Keycode.kpAsterisk:
        return AppLocalizations.of(context)!.keycodeTextKpAsterisk;
      case Keycode.kpMinus:
        return AppLocalizations.of(context)!.keycodeTextKpMinus;
      case Keycode.kpPlus:
        return AppLocalizations.of(context)!.keycodeTextKpPlus;
      case Keycode.kpEnter:
        return AppLocalizations.of(context)!.keycodeTextKpEnter;
      case Keycode.kp1:
        return AppLocalizations.of(context)!.keycodeTextKp1;
      case Keycode.kp2:
        return AppLocalizations.of(context)!.keycodeTextKp2;
      case Keycode.kp3:
        return AppLocalizations.of(context)!.keycodeTextKp3;
      case Keycode.kp4:
        return AppLocalizations.of(context)!.keycodeTextKp4;
      case Keycode.kp5:
        return AppLocalizations.of(context)!.keycodeTextKp5;
      case Keycode.kp6:
        return AppLocalizations.of(context)!.keycodeTextKp6;
      case Keycode.kp7:
        return AppLocalizations.of(context)!.keycodeTextKp7;
      case Keycode.kp8:
        return AppLocalizations.of(context)!.keycodeTextKp8;
      case Keycode.kp9:
        return AppLocalizations.of(context)!.keycodeTextKp9;
      case Keycode.kp0:
        return AppLocalizations.of(context)!.keycodeTextKp0;
      case Keycode.kpDot:
        return AppLocalizations.of(context)!.keycodeTextKpDot;
      case Keycode.esc:
        return AppLocalizations.of(context)!.keycodeTextEsc;
      case Keycode.f1:
        return AppLocalizations.of(context)!.keycodeTextF1;
      case Keycode.f2:
        return AppLocalizations.of(context)!.keycodeTextF2;
      case Keycode.f3:
        return AppLocalizations.of(context)!.keycodeTextF3;
      case Keycode.f4:
        return AppLocalizations.of(context)!.keycodeTextF4;
      case Keycode.f5:
        return AppLocalizations.of(context)!.keycodeTextF5;
      case Keycode.f6:
        return AppLocalizations.of(context)!.keycodeTextF6;
      case Keycode.f7:
        return AppLocalizations.of(context)!.keycodeTextF7;
      case Keycode.f8:
        return AppLocalizations.of(context)!.keycodeTextF8;
      case Keycode.f9:
        return AppLocalizations.of(context)!.keycodeTextF9;
      case Keycode.f10:
        return AppLocalizations.of(context)!.keycodeTextF10;
      case Keycode.f11:
        return AppLocalizations.of(context)!.keycodeTextF11;
      case Keycode.f12:
        return AppLocalizations.of(context)!.keycodeTextF12;
      case Keycode.f13:
        return AppLocalizations.of(context)!.keycodeTextF13;
      case Keycode.f14:
        return AppLocalizations.of(context)!.keycodeTextF14;
      case Keycode.f15:
        return AppLocalizations.of(context)!.keycodeTextF15;
      case Keycode.f16:
        return AppLocalizations.of(context)!.keycodeTextF16;
      case Keycode.f17:
        return AppLocalizations.of(context)!.keycodeTextF17;
      case Keycode.f18:
        return AppLocalizations.of(context)!.keycodeTextF18;
      case Keycode.f19:
        return AppLocalizations.of(context)!.keycodeTextF19;
      case Keycode.f20:
        return AppLocalizations.of(context)!.keycodeTextF20;
      case Keycode.f21:
        return AppLocalizations.of(context)!.keycodeTextF21;
      case Keycode.f22:
        return AppLocalizations.of(context)!.keycodeTextF22;
      case Keycode.f23:
        return AppLocalizations.of(context)!.keycodeTextF23;
      case Keycode.f24:
        return AppLocalizations.of(context)!.keycodeTextF24;
      case Keycode.printScreen:
        return AppLocalizations.of(context)!.keycodeTextPrintScreen;
      case Keycode.scrollLock:
        return AppLocalizations.of(context)!.keycodeTextScrollLock;
      case Keycode.pause:
        return AppLocalizations.of(context)!.keycodeTextPause;
      case Keycode.a:
        return AppLocalizations.of(context)!.keycodeTextA;
      case Keycode.b:
        return AppLocalizations.of(context)!.keycodeTextB;
      case Keycode.c:
        return AppLocalizations.of(context)!.keycodeTextC;
      case Keycode.d:
        return AppLocalizations.of(context)!.keycodeTextD;
      case Keycode.e:
        return AppLocalizations.of(context)!.keycodeTextE;
      case Keycode.f:
        return AppLocalizations.of(context)!.keycodeTextF;
      case Keycode.g:
        return AppLocalizations.of(context)!.keycodeTextG;
      case Keycode.h:
        return AppLocalizations.of(context)!.keycodeTextH;
      case Keycode.i:
        return AppLocalizations.of(context)!.keycodeTextI;
      case Keycode.j:
        return AppLocalizations.of(context)!.keycodeTextJ;
      case Keycode.k:
        return AppLocalizations.of(context)!.keycodeTextK;
      case Keycode.l:
        return AppLocalizations.of(context)!.keycodeTextL;
      case Keycode.m:
        return AppLocalizations.of(context)!.keycodeTextM;
      case Keycode.n:
        return AppLocalizations.of(context)!.keycodeTextN;
      case Keycode.o:
        return AppLocalizations.of(context)!.keycodeTextO;
      case Keycode.p:
        return AppLocalizations.of(context)!.keycodeTextP;
      case Keycode.q:
        return AppLocalizations.of(context)!.keycodeTextQ;
      case Keycode.r:
        return AppLocalizations.of(context)!.keycodeTextR;
      case Keycode.s:
        return AppLocalizations.of(context)!.keycodeTextS;
      case Keycode.t:
        return AppLocalizations.of(context)!.keycodeTextT;
      case Keycode.u:
        return AppLocalizations.of(context)!.keycodeTextU;
      case Keycode.v:
        return AppLocalizations.of(context)!.keycodeTextV;
      case Keycode.w:
        return AppLocalizations.of(context)!.keycodeTextW;
      case Keycode.x:
        return AppLocalizations.of(context)!.keycodeTextX;
      case Keycode.y:
        return AppLocalizations.of(context)!.keycodeTextY;
      case Keycode.z:
        return AppLocalizations.of(context)!.keycodeTextZ;
      case Keycode.undefined:
        return AppLocalizations.of(context)!.keycodeTextUndefined;
    }
  }
}
