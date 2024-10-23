import 'package:configurator/models/key_config_list_item_container.dart';
import 'package:configurator/models/keycode.dart';
import 'package:configurator/widgets/key_detect_field.dart';
import 'package:flutter/material.dart';

class KeyConfigListItem extends StatefulWidget {
  final KeyConfigListItemContainer container;
  const KeyConfigListItem({super.key, required this.container});

  @override
  State<KeyConfigListItem> createState() => _KeyConfigListItemState();
}

class _KeyConfigListItemState extends State<KeyConfigListItem> {
  @override
  void initState() {
    super.initState();
    widget.container.onInit?.call();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget.container.name,
                style: TextStyle(fontSize: 12),
              ),
              Transform.scale(
                  scale: .6,
                  child: Switch(
                      onChanged: (value) {
                        setState(() {
                          widget.container.onActivateChange?.call(value);
                          widget.container.enabled = value;
                        });
                      },
                      value: widget.container.enabled)),
            ]),
        Transform.scale(
          scale: .8,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: widget.container.enabled ? 60.0 : 0.0,
            alignment: Alignment.centerLeft,
            child: widget.container.enabled
                ? Container(
                    color: Colors.blueGrey[50], // Optional background color
                    child: KeyDetectField(
                      nowKey: widget.container.key,
                      onChange: (Keycode code) {
                        widget.container.onKeyChange?.call(code);
                        widget.container.key = code;
                      },
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
