import 'package:configurator/models/keycode.dart';
import 'package:configurator/utilities/keycode_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KeyDetectField extends StatefulWidget {
  KeyDetectField({this.nowKey = Keycode.undefined, this.onChange});
  Keycode nowKey;
  void Function(Keycode code)? onChange;
  @override
  _KeyDetectFieldState createState() => _KeyDetectFieldState();
}

class _KeyDetectFieldState extends State<KeyDetectField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        HardwareKeyboard.instance.addHandler(_handleKeyPress);
      } else {
        HardwareKeyboard.instance.removeHandler(_handleKeyPress);
      }
    });
    Future.delayed(Duration.zero, () {
      if (mounted) {
        _controller.text = KeycodeUtils.toStringText(context, widget.nowKey);
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    HardwareKeyboard.instance.removeHandler(_handleKeyPress);
    super.dispose();
  }

  bool _handleKeyPress(KeyEvent event) {
    widget.nowKey = FlutterKeycode.toKeycode(event.logicalKey.hashCode);
    setState(() {
      // Clear the text field and add the new key label
      _controller.text = KeycodeUtils.toStringText(context, widget.nowKey);
    });
    widget.onChange?.call(widget.nowKey);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _controller,
        focusNode: _focusNode,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(border: OutlineInputBorder()));
  }
}
