import 'dart:async';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:configurator/models/error_serial_device.dart';
import 'package:configurator/models/list_dropdown_button_item.dart';
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
  SerialDeviceState _serialDeviceState = SerialDeviceState.idle;

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
      _serialDescriptors = _getAvailableDevices();
    });
  }

  @override
  void initState() {
    super.initState();
    _loadAvailableDevice();
  }

  void _showEventSnackBar(
      BuildContext context, NotifyingEvents notifyingEvent) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
            EventNotifier.eventNotifyingMessage(context, notifyingEvent))));
  }

  void _onSelected(IListDropdownButtonItem selected) {
    // Phase 1: Invoke validation to check selected device is valid.
    Globals.instance.currentSerialDevicePort = selected.toValue();

    setState(() {
      _serialDeviceState = SerialDeviceState.establishing;
    });

    Globals.instance
        .requestHandshakeCurrentDevice()
        .then((SerialDeviceState resultState) {
      // Phase 2: Invoke handler on validation response.
      if (resultState != SerialDeviceState.expired) {
        if (mounted) {
          setState(() {
            _serialDeviceState = resultState;
          });
        }
      }
      if (resultState == SerialDeviceState.invalid && mounted) {
        _showEventSnackBar(context,
            NotifyingEvents.serialDeviceDoesNotResponseMayInvalidDevice);
      }

      // Phase 3: Invoke request to load configuration saved on device
      _requestLoadSavedKeyConfiguration();
    }).catchError((error) {
      switch (error.runtimeType) {
        case SerialPortNotInstantiatedWell _:
        case SerialPortCannotOpen _:
        case StreamControllerNotInstantiatedWell _:
        case TimeoutException _:
          if (mounted) {
            _showEventSnackBar(
                context, NotifyingEvents.serialDeviceDoesNotResponse);
          }
      }
    });
  }

  /// generally [_onSelected] calls
  /// Phase 3: Invoke request to load configuration saved on device
  void _requestLoadSavedKeyConfiguration() {
    Globals.instance.requestLoadSavedKeyConfiguration().then((value) {});
  }

  @override
  Widget build(BuildContext context) {
    return ListDropdownButton(
      items: _serialDescriptors,
      placeholder:
          Text(AppLocalizations.of(context)!.deviceSelectorPlaceholderText),
      style: FilledButton.styleFrom(
          backgroundColor: SerialDeviceStateUtils.getColor(_serialDeviceState)),
      onOpenMenu: () {
        setState(() {
          _loadAvailableDevice();
        });
      },
      onSelected: _onSelected,
    );
  }
}
