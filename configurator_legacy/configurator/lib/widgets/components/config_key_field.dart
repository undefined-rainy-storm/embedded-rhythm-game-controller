import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:configurator/const/keycode.dart' as keycode;

class ConfigKeyField extends StatefulWidget {
  const ConfigKeyField({super.key, this.description, this.callbackFunc});
  final String? description;
  final Null Function(keycode.Key)? callbackFunc;

  @override
  State<ConfigKeyField> createState() => ConfigKeyFieldState();
}

class ConfigKeyFieldState extends State<ConfigKeyField> {
  keycode.Key _nowKey = keycode.Key.undefined;
  final TextEditingController _textEditingController =
      TextEditingController(text: '');
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
    _textEditingController.text = _nowKey.name;
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
  }

  void _onFocusChange() {
    if (_focusNode.hasFocus) {}
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          KeyboardListener(
            focusNode: _focusNode,
            autofocus: false,
            onKeyEvent: (event) {
              if (event is KeyDownEvent) {
                _nowKey = keycode.Flutter.toKey(event.logicalKey.hashCode);
                widget.callbackFunc?.call(_nowKey);
                _textEditingController.text = _nowKey.name;
              }
            },
            child: SizedBox(
              width: 60,
              height: 60,
              child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  textAlign: TextAlign.center,
                  onChanged: (text) {
                    _textEditingController.text = _nowKey.name;
                  }),
            ),
          ),
          Text(widget.description ?? '')
        ]));
  }
}
