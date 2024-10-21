import 'package:flutter/material.dart';
import 'package:configurator/models/list_dropdown_button_item.dart';

class ListDropdownButton extends StatefulWidget {
  ListDropdownButton(
      {super.key,
      required this.items,
      this.placeholder,
      this.style,
      this.onOpenMenu,
      this.onSelected});
  List<IListDropdownButtonItem> items;
  Widget? placeholder;
  ButtonStyle? style;
  final Function()? onOpenMenu;
  final Function(IListDropdownButtonItem selected)? onSelected;

  @override
  State<ListDropdownButton> createState() => _ListDropdownButtonState();
}

class _ListDropdownButtonState extends State<ListDropdownButton> {
  String? _selected;
  ButtonStyle _thisStyle = FilledButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
    minimumSize: const Size(0, 0),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FilledButton(
      style:
          (widget.style == null ? _thisStyle : widget.style!.merge(_thisStyle)),
      onPressed: () async {
        widget.onOpenMenu?.call();

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
            return PopupMenuItem(value: each, child: Text(each.toText()));
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
