import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:configurator/models/keycode.dart';
import 'package:configurator/globals.dart';
import 'package:configurator/widgets/section_title.dart';
import 'package:configurator/widgets/key_detect_field.dart';

class KeyConfigListItemContainer {
  KeyConfigListItemContainer(
      {required this.name,
      this.enabled = false,
      this.key = Keycode.undefined,
      this.handler});
  String name;
  bool enabled;
  Keycode key;
  final Null Function(Keycode)? handler;
}

class KeyConfigList extends StatefulWidget {
  const KeyConfigList({super.key});

  @override
  State<KeyConfigList> createState() => _KeyConfigListState();
}

class _KeyConfigListState extends State<KeyConfigList> {
  List<KeyConfigListItemContainer> getKeyConfigEssentialContainers(
      BuildContext context) {
    return <KeyConfigListItemContainer>[
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneLeftSide,
          key: Globals.instance.keyConfig.tuneLeftSide.keycode,
          enabled: Globals.instance.keyConfig.tuneLeftSide.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.tuneLeftSide.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneS,
          key: Globals.instance.keyConfig.tuneS.keycode,
          enabled: Globals.instance.keyConfig.tuneS.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.tuneS.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneD,
          key: Globals.instance.keyConfig.tuneD.keycode,
          enabled: Globals.instance.keyConfig.tuneD.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.tuneD.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneF,
          key: Globals.instance.keyConfig.tuneF.keycode,
          enabled: Globals.instance.keyConfig.tuneF.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.tuneF.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneF,
          key: Globals.instance.keyConfig.tuneC.keycode,
          enabled: Globals.instance.keyConfig.tuneC.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.tuneC.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneF,
          key: Globals.instance.keyConfig.tuneM.keycode,
          enabled: Globals.instance.keyConfig.tuneM.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.tuneM.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneJ,
          key: Globals.instance.keyConfig.tuneJ.keycode,
          enabled: Globals.instance.keyConfig.tuneJ.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.tuneJ.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneK,
          key: Globals.instance.keyConfig.tuneK.keycode,
          enabled: Globals.instance.keyConfig.tuneK.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.tuneK.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneL,
          key: Globals.instance.keyConfig.tuneL.keycode,
          enabled: Globals.instance.keyConfig.tuneL.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.tuneL.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneRightSide,
          key: Globals.instance.keyConfig.tuneRightSide.keycode,
          enabled: Globals.instance.keyConfig.tuneRightSide.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.tuneRightSide.keycode = keycode;
          }),
    ];
  }

  List<KeyConfigListItemContainer> getKeyConfigGameControlContainers(
      BuildContext context) {
    return <KeyConfigListItemContainer>[
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEsc,
          key: Globals.instance.keyConfig.esc.keycode,
          enabled: Globals.instance.keyConfig.esc.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.esc.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEnter,
          key: Globals.instance.keyConfig.enter.keycode,
          enabled: Globals.instance.keyConfig.enter.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.enter.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTab,
          key: Globals.instance.keyConfig.tab.keycode,
          enabled: Globals.instance.keyConfig.tab.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.tab.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameSpace,
          key: Globals.instance.keyConfig.space.keycode,
          enabled: Globals.instance.keyConfig.space.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.space.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameSpeedUp,
          key: Globals.instance.keyConfig.speedUp.keycode,
          enabled: Globals.instance.keyConfig.speedUp.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.speedUp.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameSpeedDown,
          key: Globals.instance.keyConfig.speedDown.keycode,
          enabled: Globals.instance.keyConfig.speedDown.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.speedDown.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameRewind,
          key: Globals.instance.keyConfig.rewind.keycode,
          enabled: Globals.instance.keyConfig.rewind.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.rewind.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameLeftShift,
          key: Globals.instance.keyConfig.leftShift.keycode,
          enabled: Globals.instance.keyConfig.leftShift.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.leftShift.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameRightShift,
          key: Globals.instance.keyConfig.rightShift.keycode,
          enabled: Globals.instance.keyConfig.rightShift.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.rightShift.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowUp,
          key: Globals.instance.keyConfig.arrowUp.keycode,
          enabled: Globals.instance.keyConfig.arrowUp.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.arrowUp.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowDown,
          key: Globals.instance.keyConfig.arrowDown.keycode,
          enabled: Globals.instance.keyConfig.arrowDown.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.arrowDown.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowLeft,
          key: Globals.instance.keyConfig.arrowLeft.keycode,
          enabled: Globals.instance.keyConfig.arrowLeft.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.arrowLeft.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowRight,
          key: Globals.instance.keyConfig.arrowRight.keycode,
          enabled: Globals.instance.keyConfig.arrowRight.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.arrowRight.keycode = keycode;
          }),
    ];
  }

  List<KeyConfigListItemContainer> getKeyConfigCommunicationContainers(
      BuildContext context) {
    return <KeyConfigListItemContainer>[
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon1,
          key: Globals.instance.keyConfig.emoticon1.keycode,
          enabled: Globals.instance.keyConfig.emoticon1.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.emoticon1.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon2,
          key: Globals.instance.keyConfig.emoticon2.keycode,
          enabled: Globals.instance.keyConfig.emoticon2.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.emoticon2.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon3,
          key: Globals.instance.keyConfig.emoticon3.keycode,
          enabled: Globals.instance.keyConfig.emoticon3.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.emoticon3.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon4,
          key: Globals.instance.keyConfig.emoticon4.keycode,
          enabled: Globals.instance.keyConfig.emoticon4.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.emoticon4.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon5,
          key: Globals.instance.keyConfig.emoticon5.keycode,
          enabled: Globals.instance.keyConfig.emoticon5.enabled,
          handler: (Keycode keycode) {
            Globals.instance.keyConfig.emoticon5.keycode = keycode;
          }),
    ];
  }

  List<KeyConfigListItemContainer>? getKeyConfigMiscContainers(BuildContext context) {}

  List<Widget> _buildList(List<KeyConfigListItemContainer> containers) {
    return containers.map<Widget>((KeyConfigListItemContainer container) {
      return KeyConfigListItem(container: container);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
            SectionTitle(
                value: AppLocalizations.of(context)!
                    .keyConfigEssentialsSectionTitle)
          ] +
          _buildList(getKeyConfigEssentialContainers(context)) +
          <Widget>[
            SectionTitle(
                value: AppLocalizations.of(context)!
                    .keyConfigGameControlsSectionTitle)
          ] +
          _buildList(getKeyConfigGameControlContainers(context)) +
          <Widget>[
            SectionTitle(
                value: AppLocalizations.of(context)!
                    .keyConfigCommunicationsSectionTitle),
          ] +
          _buildList(getKeyConfigCommunicationContainers(context)) /* +
          <Widget>[
            SectionTitle(
                value: AppLocalizations.of(context)!.keyConfigMiscSectionTitle),
          ] +
          _buildList(keyConfigMiscContainers),*/
    );
  }
}

class KeyConfigListItem extends StatefulWidget {
  final KeyConfigListItemContainer container;
  const KeyConfigListItem({super.key, required this.container});

  @override
  State<KeyConfigListItem> createState() => _KeyConfigListItemState();
}

class _KeyConfigListItemState extends State<KeyConfigListItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchListTile(
          title: Text(widget.container.name),
          value: widget.container.enabled,
          onChanged: (value) {
            setState(() {
              widget.container.enabled = value;
            });
          },
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: widget.container.enabled ? 100.0 : 0.0,
          alignment: Alignment.centerLeft,
          child: widget.container.enabled
              ? Container(
                  color: Colors.blue[100], // Optional background color
                  padding: const EdgeInsets.all(16.0),
                  child: KeyDetectField(
                    callbackFunc: (Keycode code) {
                      widget.container.handler?.call(code);
                      widget.container.key = code;
                    },
                  ),
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
