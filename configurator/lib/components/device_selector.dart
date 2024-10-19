import 'package:flutter/material.dart';
import 'package:configurator/models/serial_descriptor.dart';

class DeviceSelector extends StatefulWidget {
  const DeviceSelector({super.key});

  @override
  State<DeviceSelector> createState() => _DeviceSelectorState();
}

class _DeviceSelectorState extends State<DeviceSelector> {
  List<SerialDescriptor> _serialDescriptors = [
    SerialDescriptor('COM', 'asdf'),
    SerialDescriptor('EACH', 'None')
  ];
  String? _selected;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FilledButton(
            style: FilledButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
        minimumSize: Size(0, 0), // Remove minimum size constraints
        tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Shrink to fit
      ),
      onPressed: () async {
        final RenderBox button = context.findRenderObject() as RenderBox;
        final RenderBox overlay =
            Overlay.of(context).context.findRenderObject() as RenderBox;

        // Calculate the position where the menu should appear
        final Offset buttonPosition =
            button.localToGlobal(Offset.zero, ancestor: overlay);
        final RelativeRect position = RelativeRect.fromRect(
          Rect.fromLTWH(
            buttonPosition.dx,
            buttonPosition.dy,
            button.size.width,
            button.size.height,
          ),
          Offset.zero & overlay.size,
        );

        // Show the menu
        final result = await showMenu<String>(
          context: context,
          position: position,
          items: _serialDescriptors.map<PopupMenuEntry<String>>((each) {
            return PopupMenuItem<String>(
                value: each.port,
                child: Text('(${each.port}) ${each.description}'));
          }).toList(),
        );

        // Handle the selection
        if (result != null) {
          setState(() {
            _selected = result;
          });
        }
      },
      child: Text('State'),
    ));
  }
}
