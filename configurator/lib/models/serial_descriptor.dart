import 'package:configurator/models/list_dropdown_button_item.dart';

class SerialDescriptor implements IListDropdownButtonItem<String> {
  late final String port;
  late final String description;
  SerialDescriptor(this.port, this.description);

  @override
  String toValue() {
    return port;
  }
  @override
  String toText() {
    return '(${port}) ${description}';
  }
}
