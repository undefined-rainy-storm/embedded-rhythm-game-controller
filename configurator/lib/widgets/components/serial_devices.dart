import 'package:flutter/material.dart';
import 'package:libserialport/libserialport.dart';

class SerialDevicesWidget extends StatefulWidget {
  const SerialDevicesWidget({super.key});

  @override
  State<SerialDevicesWidget> createState() => _SerialDevicesWidgetState();
}

class _SerialDevicesWidgetState extends State<SerialDevicesWidget> {
  List<String> avilablePorts = [
    '(select)',
  ];
  String dropdownValue = '(select)';

  @override
  void initState() {
    super.initState();
    List<String> gets = SerialPort.availablePorts;
    setState(() {
      avilablePorts = ['(select)'] + gets;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: avilablePorts.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      value: dropdownValue,
    );
  }
}
