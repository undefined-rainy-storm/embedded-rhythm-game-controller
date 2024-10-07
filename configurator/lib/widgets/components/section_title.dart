import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, this.content});
  final String? content;

  @override
  build(BuildContext context) {
    return Text(content ?? '', style: TextStyle(fontSize: 26));
  }
}
