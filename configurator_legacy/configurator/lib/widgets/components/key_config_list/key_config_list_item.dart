import 'package:flutter/material.dart';

class KeyConfigListItem extends StatefulWidget {
  const KeyConfigListItem({super.key, this.name});
  
  final String name;

  @override
  State<KeyConfigListItem> createState() => _KeyConfigListItemState();
}

class KeyConfigListItemState extends State<KeyConfigListItem> {

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 5.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text()
        ],
      )
    )
  }
}
