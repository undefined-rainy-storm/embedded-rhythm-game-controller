import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:configurator/models/keycode.dart';

class KeyDetectField extends StatefulWidget {
  const KeyDetectField({super.key, this.callbackFunc});
  final Null Function(Keycode)? callbackFunc;
  @override
  State<KeyDetectField> createState() => KeyDetectFieldState();
}

class KeyDetectFieldState extends State<KeyDetectField> {
  Keycode _nowKey = Keycode.undefined;
  final TextEditingController _textEditingController = TextEditingController(text: '');
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
    _textEditingController.text = _nowKey.name;
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (_focusNode.hasFocus) {}
  }
  
  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: _focusNode,
      autofocus: false,
      onKeyEvent: (event) {
        if (event is KeyDownEvent) {
          _nowKey = FlutterKeycode.toKeycode(event.logicalKey.hashCode);
          _textEditingController.text = _nowKey.name;
          widget.callbackFunc?.call(_nowKey);
        }
      },
      child: TextField(
        controller: _textEditingController,
        decoration: const InputDecoration(border: OutlineInputBorder()),
        textAlign: TextAlign.center,
        onChanged: (text) {
          _textEditingController.text = _nowKey.name;
        }
      )
      );
  }
}
