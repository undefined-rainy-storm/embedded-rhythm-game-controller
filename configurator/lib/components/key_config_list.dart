import 'package:configurator/widgets/key_detect_field.dart';
import 'package:flutter/material.dart';
import 'package:configurator/models/keycode.dart';
import 'package:configurator/globals.dart';
import 'dart:developer';

class KeyConfigListItemContainer {
  KeyConfigListItemContainer(
      {required this.name, this.enabled = false, this.key = Keycode.undefined, this.handler});
  String name;
  bool enabled;
  Keycode key;
  final Null Function(Keycode)? handler;
}

class KeyConfigList extends StatefulWidget {
  const KeyConfigList({super.key});

  @override
  State<KeyConfigList> createState() => _KeyConfigListState();
}

class _KeyConfigListState extends State<KeyConfigList> {
  final List<KeyConfigListItemContainer> keyConfigListItemContainers =
      <KeyConfigListItemContainer>[
    KeyConfigListItemContainer(
        name: 'Esc', key: Globals.instance.keyConfig.esc,
        handler: (code) { Globals.instance.keyConfig.esc = code; }),
    KeyConfigListItemContainer(
        name: 'Enter', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Tab', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Space', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Speed Up', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Speed Down', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Rewind', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Left Shft', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Right Shift', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Arrow Up', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Arrow Down', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Arrow Right', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Tune Left Side', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Tune Left 1', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Tune Left 2', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Tune Left 3', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Tune Left 4', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Tune Right 1', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Tune Right 2', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Tune Right 3', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Tune Right 4', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Tune Right Side', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Emoticon 1', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Emoticon 2', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Emoticon 3', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Emoticon 4', key: Globals.instance.keyConfig.esc),
    KeyConfigListItemContainer(
        name: 'Emoticon 5', key: Globals.instance.keyConfig.esc),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: keyConfigListItemContainers
          .map<Widget>((KeyConfigListItemContainer container) {
        return KeyConfigListItem(container: container);
      }).toList(),
    );
  }
}

class KeyConfigListItem extends StatefulWidget {
  final KeyConfigListItemContainer container;
  const KeyConfigListItem({super.key, required this.container});

  @override
  State<KeyConfigListItem> createState() => _KeyConfigListItemState();
}

class _KeyConfigListItemState extends State<KeyConfigListItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchListTile(
          title: Text(widget.container.name),
          value: widget.container.enabled,
          onChanged: (value) {
            setState(() {
              widget.container.enabled = value;
            });
          },
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: widget.container.enabled ? 100.0 : 0.0,
          alignment: Alignment.centerLeft,
          child: widget.container.enabled
              ? Container(
                  color: Colors.blue[100], // Optional background color
                  padding: EdgeInsets.all(16.0),
                  child: KeyDetectField(
                    callbackFunc: (Keycode code) {
                      widget.container.handler?.call(code);
                      widget.container.key = code;
                      Globals.instance.keyConfig.arrowDown = code;
                      print(Globals.instance.keyConfig.arrowDown);
                    },
                  ),
                )
              : SizedBox.shrink(),
        ),
      ],
    );
  }
}
