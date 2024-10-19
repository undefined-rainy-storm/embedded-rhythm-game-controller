import 'package:flutter/material.dart';
import 'package:configurator/models/list_dropdown_button_item.dart';

class ListDropdownButton extends StatefulWidget {
  ListDropdownButton({super.key, required this.items, this.placeholder, this.onSelected});
  List<IListDropdownButtonItem> items;
  Widget? placeholder;
  final Function(IListDropdownButtonItem selected)? onSelected;

  @override
  State<ListDropdownButton> createState() => _ListDropdownButtonState();
}

class _ListDropdownButtonState extends State<ListDropdownButton> {
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
        final result = await showMenu(
          context: context,
          position: position,
          items: widget.items.map<PopupMenuEntry>((each) {
            return PopupMenuItem(
                value: each,
                child: Text(each.toText()));
          }).toList(),
        );

        // Handle the selection
        if (result != null) {
          setState(() {
            _selected = result.toValue();
            widget.onSelected?.call(result);
          });
        }
      },
      child: _selected != null ? Text(_selected!) : widget.placeholder,
    ));
  }
}
