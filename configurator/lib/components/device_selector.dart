import 'package:flutter/material.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:configurator/globals.dart';
import 'package:configurator/models/serial_descriptor.dart';
import 'package:configurator/widgets/list_dropdown_button.dart';

class DeviceSelector extends StatefulWidget {
  const DeviceSelector({super.key});

  @override
  State<DeviceSelector> createState() => _DeviceSelectorState();
}

class _DeviceSelectorState extends State<DeviceSelector> {
  List<SerialDescriptor> _serialDescriptors = [];
  String? _selected;

  List<SerialDescriptor> _getAvailableDevices() {
    List<SerialDescriptor> availableDevices = [];
    for (String each in SerialPort.availablePorts) {
      SerialPort now = SerialPort(each);
      availableDevices.add(SerialDescriptor(each, '${now.description}'));
    }
    return availableDevices;
  }

  void _loadAvailableDevice() {
    _serialDescriptors = [];
    _serialDescriptors = _getAvailableDevices();
  }

  @override
  void initState() {
    _loadAvailableDevice();
  }

  @override
  Widget build(BuildContext context) {
    return ListDropdownButton(
      items: _serialDescriptors,
      placeholder: const Text('(select)'),
      onSelected: (selected) {
        Globals.instance.currentSerialDevicePort = selected.toValue();
      },
    );
  }
}
