import 'package:flutter/material.dart';
import 'package:configurator/components/key_config_list.dart';

class MainConfigPage extends StatefulWidget {
  const MainConfigPage({super.key});

  @override
  State<MainConfigPage> createState() => _MainConfigPageState();
}

class _MainConfigPageState extends State<MainConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Configuration')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0), // Add padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Key Configuration',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0), // Add spacing between title and list
              Expanded(
                child: KeyConfigList(), // Make the list take up remaining space
              ),
            ],
          ),
        ),
      ),
    );
  }
}
