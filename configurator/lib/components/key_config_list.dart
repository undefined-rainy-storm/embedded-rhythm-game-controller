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
          key: Globals.instance.updatedKeyConfig.tuneLeftSide.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneLeftSide.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneLeftSide.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneS,
          key: Globals.instance.updatedKeyConfig.tuneS.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneS.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneS.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneD,
          key: Globals.instance.updatedKeyConfig.tuneD.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneD.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneD.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneF,
          key: Globals.instance.updatedKeyConfig.tuneF.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneF.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneF.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneF,
          key: Globals.instance.updatedKeyConfig.tuneC.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneC.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneC.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneF,
          key: Globals.instance.updatedKeyConfig.tuneM.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneM.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneM.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneJ,
          key: Globals.instance.updatedKeyConfig.tuneJ.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneJ.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneJ.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneK,
          key: Globals.instance.updatedKeyConfig.tuneK.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneK.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneK.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneL,
          key: Globals.instance.updatedKeyConfig.tuneL.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneL.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneL.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneRightSide,
          key: Globals.instance.updatedKeyConfig.tuneRightSide.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneRightSide.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneRightSide.keycode = keycode;
          }),
    ];
  }

  List<KeyConfigListItemContainer> getKeyConfigGameControlContainers(
      BuildContext context) {
    return <KeyConfigListItemContainer>[
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEsc,
          key: Globals.instance.updatedKeyConfig.esc.keycode,
          enabled: Globals.instance.updatedKeyConfig.esc.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.esc.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEnter,
          key: Globals.instance.updatedKeyConfig.enter.keycode,
          enabled: Globals.instance.updatedKeyConfig.enter.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.enter.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTab,
          key: Globals.instance.updatedKeyConfig.tab.keycode,
          enabled: Globals.instance.updatedKeyConfig.tab.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tab.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameSpace,
          key: Globals.instance.updatedKeyConfig.space.keycode,
          enabled: Globals.instance.updatedKeyConfig.space.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.space.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameSpeedUp,
          key: Globals.instance.updatedKeyConfig.speedUp.keycode,
          enabled: Globals.instance.updatedKeyConfig.speedUp.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.speedUp.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameSpeedDown,
          key: Globals.instance.updatedKeyConfig.speedDown.keycode,
          enabled: Globals.instance.updatedKeyConfig.speedDown.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.speedDown.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameRewind,
          key: Globals.instance.updatedKeyConfig.rewind.keycode,
          enabled: Globals.instance.updatedKeyConfig.rewind.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.rewind.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameLeftShift,
          key: Globals.instance.updatedKeyConfig.leftShift.keycode,
          enabled: Globals.instance.updatedKeyConfig.leftShift.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.leftShift.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameRightShift,
          key: Globals.instance.updatedKeyConfig.rightShift.keycode,
          enabled: Globals.instance.updatedKeyConfig.rightShift.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.rightShift.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowUp,
          key: Globals.instance.updatedKeyConfig.arrowUp.keycode,
          enabled: Globals.instance.updatedKeyConfig.arrowUp.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.arrowUp.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowDown,
          key: Globals.instance.updatedKeyConfig.arrowDown.keycode,
          enabled: Globals.instance.updatedKeyConfig.arrowDown.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.arrowDown.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowLeft,
          key: Globals.instance.updatedKeyConfig.arrowLeft.keycode,
          enabled: Globals.instance.updatedKeyConfig.arrowLeft.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.arrowLeft.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowRight,
          key: Globals.instance.updatedKeyConfig.arrowRight.keycode,
          enabled: Globals.instance.updatedKeyConfig.arrowRight.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.arrowRight.keycode = keycode;
          }),
    ];
  }

  List<KeyConfigListItemContainer> getKeyConfigCommunicationContainers(
      BuildContext context) {
    return <KeyConfigListItemContainer>[
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon1,
          key: Globals.instance.updatedKeyConfig.emoticon1.keycode,
          enabled: Globals.instance.updatedKeyConfig.emoticon1.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.emoticon1.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon2,
          key: Globals.instance.updatedKeyConfig.emoticon2.keycode,
          enabled: Globals.instance.updatedKeyConfig.emoticon2.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.emoticon2.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon3,
          key: Globals.instance.updatedKeyConfig.emoticon3.keycode,
          enabled: Globals.instance.updatedKeyConfig.emoticon3.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.emoticon3.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon4,
          key: Globals.instance.updatedKeyConfig.emoticon4.keycode,
          enabled: Globals.instance.updatedKeyConfig.emoticon4.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.emoticon4.keycode = keycode;
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon5,
          key: Globals.instance.updatedKeyConfig.emoticon5.keycode,
          enabled: Globals.instance.updatedKeyConfig.emoticon5.enabled,
          handler: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.emoticon5.keycode = keycode;
          }),
    ];
  }

  List<KeyConfigListItemContainer>? getKeyConfigMiscContainers(
      BuildContext context) {}

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
            _buildList(getKeyConfigCommunicationContainers(
                context)) /* +
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
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget.container.name,
                style: TextStyle(fontSize: 12),
              ),
              Transform.scale(
                  scale: .6,
                  child: Switch(
                      onChanged: (value) {
                        setState(() {
                          widget.container.enabled = value;
                        });
                      },
                      value: widget.container.enabled)),
            ]),
        Transform.scale(
          scale: .8,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: widget.container.enabled ? 60.0 : 0.0,
            alignment: Alignment.centerLeft,
            child: widget.container.enabled
                ? Container(
                    color: Colors.blue[100], // Optional background color
                    child: KeyDetectField(
                      nowKey: widget.container.key,
                      callbackFunc: (Keycode code) {
                        widget.container.handler?.call(code);
                        widget.container.key = code;
                      },
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
