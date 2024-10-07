import 'package:flutter/material.dart';
import 'package:configurator/globals.dart';
import 'package:configurator/widgets/components/section_title.dart';
import 'package:configurator/widgets/components/config_key_field.dart';

class MainConfigPage extends StatefulWidget {
  const MainConfigPage({super.key});

  @override
  State<MainConfigPage> createState() => _MainConfigPageState();
}

class _MainConfigPageState extends State<MainConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: const EdgeInsets.only(),
        child: Column(
          children: [
            Column(
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
                SectionTitle(content: 'Tunes'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ConfigKeyField(),
                    ConfigKeyField(),
                    ConfigKeyField(),
                    ConfigKeyField(),
                    ConfigKeyField(),
                    ConfigKeyField(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ConfigKeyField(
                      description: 'LSide',
                    ),
                    ConfigKeyField(),
                    ConfigKeyField(),
                    ConfigKeyField(
                      description: 'RSide',
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [SectionTitle(content: 'Communication'), Row()],
            )
          ],
        ),
      ),
    ));
  }
}
