import 'package:configurator/models/key_config.dart';
import 'package:configurator/utilities/selected_device_state.dart';

abstract class SerialCommunicationResult<T> {
  final String port;
  final T data;
  SerialCommunicationResult(this.port, this.data);
}

class SerialHandshakeResult
    extends SerialCommunicationResult<SerialDeviceState> {
  SerialHandshakeResult(super.port, super.data);
}

class SerialLoadSavedKeyConfigurationResult
    extends SerialCommunicationResult<KeyConfig?> {
  SerialLoadSavedKeyConfigurationResult(super.port, super.data);
}
