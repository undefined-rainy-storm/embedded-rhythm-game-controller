import 'package:configurator/components/device_selector.dart';
import 'package:configurator/globals.dart';
import 'package:configurator/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:configurator/components/key_config_list.dart';

class MainConfigPage extends StatefulWidget {
  const MainConfigPage({super.key});

  @override
  State<MainConfigPage> createState() => _MainConfigPageState();
}

class _MainConfigPageState extends State<MainConfigPage> {
  void _resetSaveAndRevertButton() {
    _saveButtonOnPressed = null;
    _revertButtonOnPressed = null;
    Globals.instance.requestRefreshKeyConfigValueDisplayerWithKey();
  }

  void Function()? _saveButtonOnPressed;
  void _saveButtonOnPressedHandler() {
    setState(() {
      Globals.instance.saveCurrentSerialDeviceConfig();
      _resetSaveAndRevertButton();
    });
  }

  void Function()? _revertButtonOnPressed;
  void _revertButtonOnPressedHandler() {
    setState(() {
      Globals.instance.revertCurrentSerialDeviceConfig();
      _resetSaveAndRevertButton();
    });
  }

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
              Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Text('Device Port', style: TextStyle(fontSize: 20))),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: DeviceSelector()),
                    SizedBox(height: 7),
                    Align(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FilledButton(
                            onPressed: _saveButtonOnPressed,
                            child: Text('Save')),
                        SizedBox(width: 6),
                        FilledButton(
                            onPressed: _revertButtonOnPressed,
                            child: Text('Revert')),
                      ],
                    ))
                  ],
                ),
              ),
              Expanded(
                child: KeyConfigList(
                  onKeyConfigUpdated: () {
                    setState(() {
                      _saveButtonOnPressed = _saveButtonOnPressedHandler;
                      _revertButtonOnPressed = _revertButtonOnPressedHandler;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
