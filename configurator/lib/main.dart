import 'package:flutter/material.dart';
import 'package:configurator/screens/main_config_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Configurator',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainConfigPage(),
    );
  }
}
