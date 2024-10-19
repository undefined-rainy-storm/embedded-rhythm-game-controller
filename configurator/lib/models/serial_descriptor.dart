import 'package:configurator/models/list_dropdown_button_item.dart';

class SerialDescriptor implements IListDropdownButtonItem<String> {
  late final String port;
  late final String description;
  SerialDescriptor(this.port, this.description);

  String toValue() {
    return this.port;
  }
  String toText() {
    return '(${this.port}) ${this.description}';
  }
}
