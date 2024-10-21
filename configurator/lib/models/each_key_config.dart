import 'package:configurator/models/keycode.dart';

class EachKeyConfig {
  Keycode keycode;
  bool enabled;
  EachKeyConfig({required this.keycode, required this.enabled});
  EachKeyConfig.clone(EachKeyConfig other)
      : this(keycode: other.keycode, enabled: other.enabled);
}
