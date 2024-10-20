import 'package:flutter/material.dart';
import 'package:configurator/globals.dart';
import 'package:configurator/const/keycode.dart' as keycode;
import 'package:configurator/widgets/components/section_title.dart';
import 'package:configurator/widgets/components/config_key_field.dart';
import 'package:configurator/widgets/components/serial_devices.dart';

import 'dart:developer';

class MainConfigPage extends StatefulWidget {
  const MainConfigPage({super.key});

  @override
  State<MainConfigPage> createState() => _MainConfigPageState();
}

class _MainConfigPageState extends State<MainConfigPage> {
  final GlobalKey<ConfigKeyFieldState> _configKeyFieldTuneLeftSide =
      GlobalKey<ConfigKeyFieldState>();
  final GlobalKey<ConfigKeyFieldState> _configKeyFieldTuneS =
      GlobalKey<ConfigKeyFieldState>();
  final GlobalKey<ConfigKeyFieldState> _configKeyFieldTuneD =
      GlobalKey<ConfigKeyFieldState>();
  final GlobalKey<ConfigKeyFieldState> _configKeyFieldTuneF =
      GlobalKey<ConfigKeyFieldState>();
  final GlobalKey<ConfigKeyFieldState> _configKeyFieldTuneC =
      GlobalKey<ConfigKeyFieldState>();
  final GlobalKey<ConfigKeyFieldState> _configKeyFieldTuneM =
      GlobalKey<ConfigKeyFieldState>();
  final GlobalKey<ConfigKeyFieldState> _configKeyFieldTuneJ =
      GlobalKey<ConfigKeyFieldState>();
  final GlobalKey<ConfigKeyFieldState> _configKeyFieldTuneK =
      GlobalKey<ConfigKeyFieldState>();
  final GlobalKey<ConfigKeyFieldState> _configKeyFieldTuneL =
      GlobalKey<ConfigKeyFieldState>();
  final GlobalKey<ConfigKeyFieldState> _configKeyFieldTuenRightSide =
      GlobalKey<ConfigKeyFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: const EdgeInsets.only(),
        child: Column(
          children: [
            const SerialDevicesWidget(),
            const Column(
              children: [
                SectionTitle(content: 'Controls'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ConfigKeyField()],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SectionTitle(content: 'Tunes'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ConfigKeyField(
                      key: _configKeyFieldTuneS,
                      callbackFunc: (keycode.Key each) {
                        setState(() {
                          Globals.instance.keyConfig.tuneS = each;
                        });
                        inspect(Globals.instance.keyConfig);
                      },
                    ),
                    ConfigKeyField(
                      key: _configKeyFieldTuneD,
                      callbackFunc: (keycode.Key each) {
                        setState(() {
                          Globals.instance.keyConfig.tuneD = each;
                        });
                      },
                    ),
                    ConfigKeyField(
                      key: _configKeyFieldTuneF,
                      callbackFunc: (keycode.Key each) {
                        setState(() {
                          Globals.instance.keyConfig.tuneF = each;
                        });
                      },
                    ),
                    ConfigKeyField(
                      key: _configKeyFieldTuneJ,
                      callbackFunc: (keycode.Key each) {
                        setState(() {
                          Globals.instance.keyConfig.tuneJ = each;
                        });
                      },
                    ),
                    ConfigKeyField(
                      key: _configKeyFieldTuneK,
                      callbackFunc: (keycode.Key each) {
                        setState(() {
                          Globals.instance.keyConfig.tuneK = each;
                        });
                      },
                    ),
                    ConfigKeyField(
                      key: _configKeyFieldTuneL,
                      callbackFunc: (keycode.Key each) {
                        setState(() {
                          Globals.instance.keyConfig.tuneL = each;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ConfigKeyField(
                      key: _configKeyFieldTuneLeftSide,
                      callbackFunc: (keycode.Key each) {
                        setState(() {
                          Globals.instance.keyConfig.tuneLeftSide = each;
                        });
                      },
                      description: 'LSide',
                    ),
                    ConfigKeyField(
                      key: _configKeyFieldTuneC,
                      callbackFunc: (keycode.Key each) {
                        setState(() {
                          Globals.instance.keyConfig.tuneC = each;
                        });
                      },
                    ),
                    ConfigKeyField(
                      key: _configKeyFieldTuneM,
                      callbackFunc: (keycode.Key each) {
                        setState(() {
                          Globals.instance.keyConfig.tuneM = each;
                        });
                      },
                    ),
                    ConfigKeyField(
                      key: _configKeyFieldTuenRightSide,
                      callbackFunc: (keycode.Key each) {
                        setState(() {
                          Globals.instance.keyConfig.tuneRightSide = each;
                        });
                      },
                      description: 'RSide',
                    ),
                  ],
                )
              ],
            ),
            const Column(
              children: [SectionTitle(content: 'Communication'), Row()],
            )
          ],
        ),
      ),
    ));
  }
}
