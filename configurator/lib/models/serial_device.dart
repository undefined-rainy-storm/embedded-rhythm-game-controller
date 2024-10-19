import 'package:configurator/models/error_serial_device.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:configurator/build_config.dart';
import 'package:configurator/models/serial_descriptor.dart';
import 'package:configurator/utilities/libserialport_utils.dart';

class SerialDevice {
  late SerialDescriptor? serialDescriptor;
  late SerialPort? serialPort;
  late SerialPortConfig serialPortConfig;

  void _initSerialPortConfig() {
    serialPortConfig = SerialPortConfig()
      ..baudRate = BuildConfig.serialBaudRate
      ..bits = BuildConfig.serialBits
      ..stopBits = BuildConfig.serialStopBits
      ..parity = BuildConfig.serialParity
      ..setFlowControl(BuildConfig.serialFlowControl);
  }

  void _renewSerialPortAndDescriptor(String port) {
    if (!LibserialportUtils.isValid(port)) return;

    // SerialPort
    if (serialPort == null) {
      serialPort = SerialPort(port);
    }
    // SerialDescriptor
    serialDescriptor = SerialDescriptor(port, '${serialPort?.description}');
  }
  void _initSerialPortAndDescriptor(String port) => _renewSerialPortAndDescriptor(port);
  void _initSerialDescriptor(String port) {
    if (serialDescriptor != null) {
      return;
    }
    _renewSerialPortAndDescriptor(port);
  }

  void _initSerialPort(String port) {
    if (serialPort != null) {
      return;
    }
    _renewSerialPortAndDescriptor(port);
  }

  SerialDevice(String port) {
    _initSerialPortAndDescriptor(port);
    _initSerialPortConfig();
  }
  SerialDevice.fromDescriptor(SerialDescriptor descriptor) {
    serialDescriptor = descriptor;
    _initSerialPort(serialDescriptor!.port);
    _initSerialPortConfig();
  }

  void beginCommunication() {
    if (serialPort == null) return;
    if (serialPort!.isOpen) {
      // throw SerialPortIsNotClosed;
      return;
    }
    if (!serialPort!.openReadWrite()) {
      throw SerialPortCannotOpen('Failed to open port ${serialPort!.name}');
    }
  }

  void closeCommunication() {
    if (serialPort == null) return;
    if (serialPort!.isOpen) {
      // throw SerialPortIsNotOpened;
      return;
    }
    if (!serialPort!.close()) {
      throw SerialPortCannotOpen('Failed to close port ${serialPort!.name}');
    }
  }
}
