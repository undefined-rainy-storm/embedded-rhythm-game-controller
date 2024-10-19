import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';

class DebugSerialPage extends StatefulWidget {
  const DebugSerialPage({super.key});

  @override
  State<DebugSerialPage> createState() => _DebugSerialPageState();
}

class _DebugSerialPageState extends State<DebugSerialPage> {
  final port = SerialPort('/dev/cu.usbmodem1101');

  @override
  void initState() {
    super.initState();
    _initPort();
  }

  void _initPort() {
    try {
      port.openReadWrite();
      port.config = SerialPortConfig()
        ..baudRate = 115200
        ..bits = 8
        ..stopBits = 1
        ..parity = SerialPortParity.none
        ..setFlowControl(SerialPortFlowControl.none);
    } catch (error) {
      print(error);
    }
  }

  void _sayHelloWorld() {
    if (!port.isOpen) return;
    port.write(Uint8List.fromList("Hello\n".codeUnits));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: _sayHelloWorld,
                  child:
                      Text("Say Hello World", style: TextStyle(fontSize: 100)))
            ],
          ),
        ));
  }
}
