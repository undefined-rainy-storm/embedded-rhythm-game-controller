import 'package:flutter/material.dart';
import 'package:configurator/models/keycode.dart';
import 'package:configurator/globals.dart';
import 'package:flutter/rendering.dart';

class KeyConfigListItemContainer {
  KeyConfigListItemContainer(
      {required this.name, this.enabled = false, this.key = Keycode.undefined});
  String name;
  bool enabled;
  Keycode key;
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
        name: 'Esc', key: Globals.instance.keyConfig.esc),
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
    return SingleChildScrollView(
      child: Column(
        children: [],
      ),
    );
  }

  Widget _buildPanels() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          keyConfigListItemContainers[index].enabled = isExpanded;
        });
      },
      children: keyConfigListItemContainers
          .map<ExpansionPanel>((KeyConfigListItemContainer container) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(container.name),
            );
          },
          body: ListTile(
              title: Text('asdf'),
              subtitle:
                  const Text('To delete this panel, tap the trash can icon'),
              trailing: const Icon(Icons.delete),
              onTap: () {
                setState(() {
                  //_data.removeWhere((Item currentItem) => item == currentItem);
                });
              }),
          isExpanded: container.enabled,
        );
      }).toList(),
    );
  }
}
