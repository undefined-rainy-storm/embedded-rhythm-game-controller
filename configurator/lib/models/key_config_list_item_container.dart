import 'package:configurator/models/keycode.dart';
import 'package:flutter/widgets.dart';

class KeyConfigListItemContainer {
  KeyConfigListItemContainer({
    required this.name,
    this.enabled = false,
    this.key,
    this.keycode = Keycode.undefined,
    this.onInit,
    this.onActivateChange,
    this.onKeyChange,
  });
  String name;
  bool enabled;
  GlobalKey? key;
  Keycode keycode;
  final Null Function()? onInit;
  final Null Function(bool)? onActivateChange;
  final Null Function(Keycode)? onKeyChange;
}
