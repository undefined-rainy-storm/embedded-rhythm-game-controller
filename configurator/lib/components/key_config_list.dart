import 'package:configurator/components/key_config_list_item.dart';
import 'package:configurator/models/key_config_list_item_container.dart';
import 'package:configurator/models/key_config_structure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:configurator/models/keycode.dart';
import 'package:configurator/globals.dart';
import 'package:configurator/widgets/section_title.dart';
import 'package:configurator/widgets/key_detect_field.dart';

class KeyConfigList extends StatefulWidget {
  const KeyConfigList({super.key, this.onKeyConfigUpdated});
  final Null Function()? onKeyConfigUpdated;

  @override
  State<KeyConfigList> createState() => _KeyConfigListState();
}

class _KeyConfigListState extends State<KeyConfigList> {
  void _onChangeHandlerCommons() {
    widget.onKeyConfigUpdated?.call();
  }

  void _onActivateChangeHandler(bool enabled) {
    _onChangeHandlerCommons();
  }

  void _onKeyChangeHandler(Keycode keycode) {
    /**
     * Todo:
     * onKeyConfigUpdated is intended to alert to parent value need to be saved.
     * Parent should display the fact that change detected and save button.
     */
    _onChangeHandlerCommons();
  }

  KeyConfigStructure<GlobalKey<KeyConfigListItemState>> keyConfigGlobalKeys =
      KeyConfigStructure<GlobalKey<KeyConfigListItemState>>(
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  );

  @override
  void initState() {
    super.initState();
    Globals.instance.keyConfigGlobalKeys = keyConfigGlobalKeys;
  }

  List<KeyConfigListItemContainer> getKeyConfigEssentialContainers(
      BuildContext context) {
    return <KeyConfigListItemContainer>[
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneLeftSide,
          key: keyConfigGlobalKeys.tuneLeftSide,
          keycode: Globals.instance.updatedKeyConfig.tuneLeftSide.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneLeftSide.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.tuneLeftSide.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneLeftSide.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneS,
          key: keyConfigGlobalKeys.tuneS,
          keycode: Globals.instance.updatedKeyConfig.tuneS.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneS.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.tuneS.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneS.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneD,
          key: keyConfigGlobalKeys.tuneD,
          keycode: Globals.instance.updatedKeyConfig.tuneD.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneD.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.tuneD.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneD.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneF,
          key: keyConfigGlobalKeys.tuneF,
          keycode: Globals.instance.updatedKeyConfig.tuneF.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneF.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.tuneF.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneF.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneC,
          key: keyConfigGlobalKeys.tuneC,
          keycode: Globals.instance.updatedKeyConfig.tuneC.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneC.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.tuneC.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneC.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneM,
          key: keyConfigGlobalKeys.tuneM,
          keycode: Globals.instance.updatedKeyConfig.tuneM.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneM.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.tuneM.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneM.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneJ,
          key: keyConfigGlobalKeys.tuneJ,
          keycode: Globals.instance.updatedKeyConfig.tuneJ.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneJ.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.tuneJ.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneJ.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneK,
          key: keyConfigGlobalKeys.tuneK,
          keycode: Globals.instance.updatedKeyConfig.tuneK.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneK.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.tuneK.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneK.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneL,
          key: keyConfigGlobalKeys.tuneL,
          keycode: Globals.instance.updatedKeyConfig.tuneL.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneL.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.tuneL.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneL.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTuneRightSide,
          key: keyConfigGlobalKeys.tuneRightSide,
          keycode: Globals.instance.updatedKeyConfig.tuneRightSide.keycode,
          enabled: Globals.instance.updatedKeyConfig.tuneRightSide.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.tuneRightSide.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tuneRightSide.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
    ];
  }

  List<KeyConfigListItemContainer> getKeyConfigGameControlContainers(
      BuildContext context) {
    return <KeyConfigListItemContainer>[
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEsc,
          key: keyConfigGlobalKeys.esc,
          keycode: Globals.instance.updatedKeyConfig.esc.keycode,
          enabled: Globals.instance.updatedKeyConfig.esc.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.esc.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.esc.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEnter,
          key: keyConfigGlobalKeys.enter,
          keycode: Globals.instance.updatedKeyConfig.enter.keycode,
          enabled: Globals.instance.updatedKeyConfig.enter.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.enter.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.enter.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameTab,
          key: keyConfigGlobalKeys.tab,
          keycode: Globals.instance.updatedKeyConfig.tab.keycode,
          enabled: Globals.instance.updatedKeyConfig.tab.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.tab.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.tab.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameSpace,
          key: keyConfigGlobalKeys.space,
          keycode: Globals.instance.updatedKeyConfig.space.keycode,
          enabled: Globals.instance.updatedKeyConfig.space.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.space.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.space.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameSpeedUp,
          key: keyConfigGlobalKeys.speedUp,
          keycode: Globals.instance.updatedKeyConfig.speedUp.keycode,
          enabled: Globals.instance.updatedKeyConfig.speedUp.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.speedUp.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.speedUp.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameSpeedDown,
          key: keyConfigGlobalKeys.speedDown,
          keycode: Globals.instance.updatedKeyConfig.speedDown.keycode,
          enabled: Globals.instance.updatedKeyConfig.speedDown.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.speedDown.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.speedDown.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameRewind,
          key: keyConfigGlobalKeys.rewind,
          keycode: Globals.instance.updatedKeyConfig.rewind.keycode,
          enabled: Globals.instance.updatedKeyConfig.rewind.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.rewind.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.rewind.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameLeftShift,
          key: keyConfigGlobalKeys.leftShift,
          keycode: Globals.instance.updatedKeyConfig.leftShift.keycode,
          enabled: Globals.instance.updatedKeyConfig.leftShift.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.leftShift.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.leftShift.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameRightShift,
          key: keyConfigGlobalKeys.rightShift,
          keycode: Globals.instance.updatedKeyConfig.rightShift.keycode,
          enabled: Globals.instance.updatedKeyConfig.rightShift.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.rightShift.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.rightShift.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowUp,
          key: keyConfigGlobalKeys.arrowUp,
          keycode: Globals.instance.updatedKeyConfig.arrowUp.keycode,
          enabled: Globals.instance.updatedKeyConfig.arrowUp.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.arrowUp.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.arrowUp.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowDown,
          key: keyConfigGlobalKeys.arrowDown,
          keycode: Globals.instance.updatedKeyConfig.arrowDown.keycode,
          enabled: Globals.instance.updatedKeyConfig.arrowDown.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.arrowDown.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.arrowDown.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowLeft,
          key: keyConfigGlobalKeys.tuneLeftSide,
          keycode: Globals.instance.updatedKeyConfig.arrowLeft.keycode,
          enabled: Globals.instance.updatedKeyConfig.arrowLeft.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.arrowLeft.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.arrowLeft.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameArrowRight,
          key: keyConfigGlobalKeys.arrowRight,
          keycode: Globals.instance.updatedKeyConfig.arrowRight.keycode,
          enabled: Globals.instance.updatedKeyConfig.arrowRight.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.arrowRight.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.arrowRight.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
    ];
  }

  List<KeyConfigListItemContainer> getKeyConfigCommunicationContainers(
      BuildContext context) {
    return <KeyConfigListItemContainer>[
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon1,
          key: keyConfigGlobalKeys.emoticon1,
          keycode: Globals.instance.updatedKeyConfig.emoticon1.keycode,
          enabled: Globals.instance.updatedKeyConfig.emoticon1.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.emoticon1.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.emoticon1.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon2,
          key: keyConfigGlobalKeys.emoticon2,
          keycode: Globals.instance.updatedKeyConfig.emoticon2.keycode,
          enabled: Globals.instance.updatedKeyConfig.emoticon2.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.emoticon2.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.emoticon2.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon3,
          key: keyConfigGlobalKeys.emoticon3,
          keycode: Globals.instance.updatedKeyConfig.emoticon3.keycode,
          enabled: Globals.instance.updatedKeyConfig.emoticon3.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.emoticon3.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.emoticon3.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon4,
          key: keyConfigGlobalKeys.emoticon4,
          keycode: Globals.instance.updatedKeyConfig.emoticon4.keycode,
          enabled: Globals.instance.updatedKeyConfig.emoticon4.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.emoticon4.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.emoticon4.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
      KeyConfigListItemContainer(
          name: AppLocalizations.of(context)!.keyNameEmoticon5,
          key: keyConfigGlobalKeys.emoticon5,
          keycode: Globals.instance.updatedKeyConfig.emoticon5.keycode,
          enabled: Globals.instance.updatedKeyConfig.emoticon5.enabled,
          onActivateChange: (bool enabled) {
            Globals.instance.updatedKeyConfig.emoticon5.enabled = enabled;
            _onActivateChangeHandler(enabled);
          },
          onKeyChange: (Keycode keycode) {
            Globals.instance.updatedKeyConfig.emoticon5.keycode = keycode;
            _onKeyChangeHandler(keycode);
          }),
    ];
  }

  List<KeyConfigListItemContainer>? getKeyConfigMiscContainers(
      BuildContext context) {}

  List<Widget> _buildList(List<KeyConfigListItemContainer> containers) {
    return containers.map<Widget>((KeyConfigListItemContainer container) {
      return KeyConfigListItem(
        key: container.key,
        name: container.name,
        enabled: container.enabled,
        keycode: container.keycode,
        onInit: container.onInit,
        onActivateChange: container.onActivateChange,
        onKeyChange: container.onKeyChange,
      );
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
