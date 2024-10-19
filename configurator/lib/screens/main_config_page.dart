import 'package:flutter/material.dart';
import 'package:configurator/widgets/key_config_list.dart';

class MainConfigPage extends StatefulWidget {
  const MainConfigPage({super.key});

  @override
  State<MainConfigPage> createState() => _MainConfigPageState();
}

class _MainConfigPageState extends State<MainConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: KeyConfigList());
  }
}
