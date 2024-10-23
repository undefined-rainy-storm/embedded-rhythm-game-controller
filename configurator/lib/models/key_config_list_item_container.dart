import 'package:configurator/models/keycode.dart';

class KeyConfigListItemContainer {
  KeyConfigListItemContainer({
    required this.name,
    this.enabled = false,
    this.key = Keycode.undefined,
    this.onInit,
    this.onActivateChange,
    this.onKeyChange,
  });
  String name;
  bool enabled;
  Keycode key;
  final Null Function()? onInit;
  final Null Function(bool)? onActivateChange;
  final Null Function(Keycode)? onKeyChange;
}
