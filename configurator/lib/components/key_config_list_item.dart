import 'package:configurator/models/each_key_config.dart';
import 'package:configurator/models/key_config_list_item_container.dart';
import 'package:configurator/models/keycode.dart';
import 'package:configurator/widgets/key_detect_field.dart';
import 'package:flutter/material.dart';

class KeyConfigListItem extends StatefulWidget {
  KeyConfigListItem(
      {super.key,
      required this.name,
      required this.enabled,
      required this.keycode,
      this.onInit,
      this.onActivateChange,
      this.onKeyChange});
  final String name;
  late bool enabled;
  late Keycode keycode;
  final Null Function()? onInit;
  final Null Function(bool)? onActivateChange;
  final Null Function(Keycode)? onKeyChange;

  @override
  State<KeyConfigListItem> createState() => KeyConfigListItemState();
}

class KeyConfigListItemState extends State<KeyConfigListItem> {
  GlobalKey<KeyDetectFieldState> keyDetectFieldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    widget.onInit?.call();
  }

  void updateValue(EachKeyConfig eachKeyConfig) {
    setState(() {
      widget.enabled = eachKeyConfig.enabled;
      widget.keycode = eachKeyConfig.keycode;
      keyDetectFieldKey.currentState?.updateKeyCode(eachKeyConfig.keycode);
      keyDetectFieldKey.currentState?.widget.nowKey = eachKeyConfig.keycode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget.name,
                style: TextStyle(fontSize: 12),
              ),
              Transform.scale(
                  scale: .6,
                  child: Switch(
                      onChanged: (value) {
                        setState(() {
                          widget.onActivateChange?.call(value);
                          widget.enabled = value;
                        });
                      },
                      value: widget.enabled)),
            ]),
        Transform.scale(
          scale: .8,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: widget.enabled ? 60.0 : 0.0,
            alignment: Alignment.centerLeft,
            child: widget.enabled
                ? Container(
                    color: Colors.blueGrey[50], // Optional background color
                    child: KeyDetectField(
                      key: keyDetectFieldKey,
                      nowKey: widget.keycode,
                      onChange: (Keycode code) {
                        widget.onKeyChange?.call(code);
                        widget.keycode = code;
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
