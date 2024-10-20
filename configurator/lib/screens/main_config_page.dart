import 'package:configurator/components/device_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle)),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0), // Add padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.center,
                child: DeviceSelector(),
              ),
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
