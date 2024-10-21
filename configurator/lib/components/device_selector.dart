import 'package:configurator/models/notifying_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:configurator/globals.dart';
import 'package:configurator/models/serial_descriptor.dart';
import 'package:configurator/widgets/list_dropdown_button.dart';
import 'package:configurator/utilities/selected_device_state.dart';
import 'package:configurator/utilities/event_notifier.dart';

class DeviceSelector extends StatefulWidget {
  const DeviceSelector({super.key});

  @override
  State<DeviceSelector> createState() => _DeviceSelectorState();
}

class _DeviceSelectorState extends State<DeviceSelector> {
  List<SerialDescriptor> _serialDescriptors = [];
  String? _selected;
  SelectedDeviceState _selectedDeviceState = SelectedDeviceState.idle;

  List<SerialDescriptor> _getAvailableDevices() {
    List<SerialDescriptor> availableDevices = [];
    for (String each in SerialPort.availablePorts) {
      SerialPort now = SerialPort(each);
      availableDevices.add(SerialDescriptor(each, '${now.description}'));
    }
    return availableDevices;
  }

  void _loadAvailableDevice() {
    setState(() {
      _serialDescriptors = [];
      _serialDescriptors = _getAvailableDevices();
    });
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
      style: FilledButton.styleFrom(
          backgroundColor:
              SelectedDeviceStateUtils.getColor(_selectedDeviceState)),
      onSelected: (selected) async {
        Globals.instance.currentSerialDevicePort = selected.toValue();
        setState(() {
          _selectedDeviceState = SelectedDeviceState.establishing;
        });
        bool result = await Globals.instance.checkCurrentSerialDeviceIsValid();
        setState(() {
          _selectedDeviceState =
              result ? SelectedDeviceState.valid : SelectedDeviceState.invalid;
          if (!result) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(EventNotifier.eventNotifyingMessage(
                    context, NotifyingEvents.serialDeviceDoesNotResponse))));
          }
        });
      },
    );
  }
}
