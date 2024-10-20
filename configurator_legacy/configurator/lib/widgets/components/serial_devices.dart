import 'package:configurator/classes/serial_device.dart';
import 'package:configurator/classes/serial_descriptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'dart:math';

const int configMaxDeviceNameLength = 50;

class SerialDevicesWidget extends StatefulWidget {
  const SerialDevicesWidget({super.key});

  @override
  State<SerialDevicesWidget> createState() => _SerialDevicesWidgetState();
}

class _SerialDevicesWidgetState extends State<SerialDevicesWidget> {
  final SerialDescriptor _placeholder = SerialDescriptor('select', '',
      id: DateTime.now().millisecondsSinceEpoch.toString());

  late List<SerialDescriptor> dropdownOptions;
  late SerialDescriptor dropdownValue = _placeholder;

  late SerialDevice _nowDevice;

  void _loadAvailableDevices() {
    List<SerialDescriptor> availableDevices = [];

    for (String each in SerialPort.availablePorts) {
      SerialPort now = SerialPort(each);
      availableDevices.add(SerialDescriptor(each, '${now.description}'));
    }

    setState(() {
      dropdownOptions = [_placeholder] + availableDevices;
    });
  }

  List<DropdownMenuItem<SerialDescriptor>> _renderAvailableDevices() {
    return dropdownOptions
        .map<DropdownMenuItem<SerialDescriptor>>((SerialDescriptor each) {
      String out = '(${each.port}) ${each.description}';
      if (out.length > configMaxDeviceNameLength) {
        out =
            '${out.substring(0, min(configMaxDeviceNameLength, out.length))}...';
      }
      return DropdownMenuItem<SerialDescriptor>(
        value: each,
        child: Text(out),
      );
    }).toList();
  }

  @override
  void initState() {
    super.initState();
    _loadAvailableDevices();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: _renderAvailableDevices(),
      // onTap: _loadAvailableDevices,
      onChanged: (SerialDescriptor? device) {
        setState(() {
          dropdownValue = device!;
          _nowDevice = SerialDevice(device.port);
        });
        _nowDevice.openRWComm();
        _nowDevice.requestIsValidDevice().then((value) {
          print(value);
        });
      },
      value: dropdownValue,
    );
  }
}
