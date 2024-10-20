import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:configurator/models/keycode.dart';

class KeyDetectField extends StatefulWidget {
  KeyDetectField({super.key, this.callbackFunc, this.nowKey = Keycode.undefined});
  final Null Function(Keycode)? callbackFunc;
  Keycode nowKey;
  @override
  State<KeyDetectField> createState() => KeyDetectFieldState();
}

class KeyDetectFieldState extends State<KeyDetectField> {
  final TextEditingController _textEditingController = TextEditingController(text: '');
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
    _textEditingController.text = widget.nowKey.name;
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
          widget.nowKey = FlutterKeycode.toKeycode(event.logicalKey.hashCode);
          _textEditingController.text = widget.nowKey.name;
          widget.callbackFunc?.call(widget.nowKey);
        }
      },
      child: TextField(
        controller: _textEditingController,
        decoration: const InputDecoration(border: OutlineInputBorder()),
        textAlign: TextAlign.center,
        onChanged: (text) {
          _textEditingController.text = widget.nowKey.name;
        }
      )
      );
  }
}
