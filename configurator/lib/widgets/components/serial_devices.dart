import 'package:configurator/classes/serial_devices.dart';
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
  late final SerialDevice _placeholder = SerialDevice('select', '');
  late List<SerialDevice> dropdownOptions;
  late SerialDevice dropdownValue = _placeholder;

  @override
  void initState() {
    super.initState();

    List<SerialDevice> serialDevices = [];

    // serialDevices.add(_placeholder);

    for (String each in SerialPort.availablePorts) {
      SerialPort now = SerialPort(each);
      serialDevices
          .add(SerialDevice(each, now.description ?? '', serialPort: now));
    }

    setState(() {
      dropdownOptions = [_placeholder] + serialDevices;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: dropdownOptions
          .map<DropdownMenuItem<SerialDevice>>((SerialDevice each) {
        String out = '(${each.port}) ${each.deviceName}';
        if (out.length > configMaxDeviceNameLength) {
          out = out.substring(0, min(configMaxDeviceNameLength, out.length)) +
              '...';
        }
        return DropdownMenuItem<SerialDevice>(
          value: each,
          child: Text(out),
        );
      }).toList(),
      onChanged: (SerialDevice? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      value: dropdownValue,
    );
  }
}
