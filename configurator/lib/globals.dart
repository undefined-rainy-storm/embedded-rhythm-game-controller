import 'dart:async';

import 'package:configurator/build_config.dart';
import 'package:configurator/components/key_config_list_item.dart';
import 'package:configurator/models/each_key_config.dart';
import 'package:configurator/models/error_serial_device.dart';
import 'package:configurator/models/key_config_structure.dart';
import 'package:configurator/models/keycode.dart';
import 'package:configurator/models/key_config.dart';
import 'package:configurator/models/serial_device.dart';
import 'package:configurator/models/serial_communication_result.dart';
import 'package:configurator/utilities/selected_device_state.dart';
import 'package:flutter/widgets.dart';

class Globals {
  String currentLocale = 'kr';

  late KeyConfig keyConfig;
  late KeyConfig updatedKeyConfig;
  late KeyConfigStructure<GlobalKey<KeyConfigListItemState>>?
      keyConfigGlobalKeys;
  late String currentSerialDevicePort;
  late SerialDeviceState currentSerialDeviceState;
  late Map<String, SerialDevice> _serialDevices;
  late List<Function()> onKeyConfigChangeEventHandlers;

  bool get keyConfigUpdated {
    return !(keyConfig == updatedKeyConfig);
  }

  static Globals instance = Globals._privateConstructor();

  factory Globals() {
    return instance;
  }

  Globals._privateConstructor() {
    KeyConfig loaded = KeyConfig(
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false),
        EachKeyConfig(keycode: Keycode.undefined, enabled: false));
    // Load from Arduino
    keyConfig = BuildConfig.defaultKeyConfig;
    updatedKeyConfig = KeyConfig.clone(keyConfig);
    currentSerialDeviceState = SerialDeviceState.idle;
    _serialDevices = Map<String, SerialDevice>();
    onKeyConfigChangeEventHandlers = [];
    return;
    keyConfig = KeyConfig(
        loaded.esc.keycode != Keycode.undefined
            ? loaded.esc
            : BuildConfig.defaultKeyConfig.esc,
        loaded.enter.keycode != Keycode.undefined
            ? loaded.enter
            : BuildConfig.defaultKeyConfig.enter,
        loaded.tab.keycode != Keycode.undefined
            ? loaded.tab
            : BuildConfig.defaultKeyConfig.tab,
        loaded.space.keycode != Keycode.undefined
            ? loaded.space
            : BuildConfig.defaultKeyConfig.space,
        loaded.speedUp.keycode != Keycode.undefined
            ? loaded.speedUp
            : BuildConfig.defaultKeyConfig.speedUp,
        loaded.speedDown.keycode != Keycode.undefined
            ? loaded.speedDown
            : BuildConfig.defaultKeyConfig.speedDown,
        loaded.rewind.keycode != Keycode.undefined
            ? loaded.rewind
            : BuildConfig.defaultKeyConfig.rewind,
        loaded.leftShift.keycode != Keycode.undefined
            ? loaded.leftShift
            : BuildConfig.defaultKeyConfig.leftShift,
        loaded.rightShift.keycode != Keycode.undefined
            ? loaded.rightShift
            : BuildConfig.defaultKeyConfig.rightShift,
        loaded.arrowUp.keycode != Keycode.undefined
            ? loaded.arrowUp
            : BuildConfig.defaultKeyConfig.arrowUp,
        loaded.arrowDown.keycode != Keycode.undefined
            ? loaded.arrowDown
            : BuildConfig.defaultKeyConfig.arrowDown,
        loaded.arrowLeft.keycode != Keycode.undefined
            ? loaded.arrowLeft
            : BuildConfig.defaultKeyConfig.arrowLeft,
        loaded.arrowRight.keycode != Keycode.undefined
            ? loaded.arrowRight
            : BuildConfig.defaultKeyConfig.arrowRight,
        loaded.tuneLeftSide.keycode != Keycode.undefined
            ? loaded.tuneLeftSide
            : BuildConfig.defaultKeyConfig.tuneLeftSide,
        loaded.tuneS.keycode != Keycode.undefined
            ? loaded.tuneS
            : BuildConfig.defaultKeyConfig.tuneS,
        loaded.tuneD.keycode != Keycode.undefined
            ? loaded.tuneD
            : BuildConfig.defaultKeyConfig.tuneD,
        loaded.tuneF.keycode != Keycode.undefined
            ? loaded.tuneF
            : BuildConfig.defaultKeyConfig.tuneF,
        loaded.tuneC.keycode != Keycode.undefined
            ? loaded.tuneC
            : BuildConfig.defaultKeyConfig.tuneC,
        loaded.tuneM.keycode != Keycode.undefined
            ? loaded.tuneM
            : BuildConfig.defaultKeyConfig.tuneM,
        loaded.tuneJ.keycode != Keycode.undefined
            ? loaded.tuneJ
            : BuildConfig.defaultKeyConfig.tuneJ,
        loaded.tuneK.keycode != Keycode.undefined
            ? loaded.tuneK
            : BuildConfig.defaultKeyConfig.tuneK,
        loaded.tuneL.keycode != Keycode.undefined
            ? loaded.tuneL
            : BuildConfig.defaultKeyConfig.tuneL,
        loaded.tuneRightSide.keycode != Keycode.undefined
            ? loaded.tuneRightSide
            : BuildConfig.defaultKeyConfig.tuneRightSide,
        loaded.emoticon1.keycode != Keycode.undefined
            ? loaded.emoticon1
            : BuildConfig.defaultKeyConfig.emoticon1,
        loaded.emoticon2.keycode != Keycode.undefined
            ? loaded.emoticon2
            : BuildConfig.defaultKeyConfig.emoticon2,
        loaded.emoticon3.keycode != Keycode.undefined
            ? loaded.emoticon3
            : BuildConfig.defaultKeyConfig.emoticon3,
        loaded.emoticon4.keycode != Keycode.undefined
            ? loaded.emoticon4
            : BuildConfig.defaultKeyConfig.emoticon4,
        loaded.emoticon5.keycode != Keycode.undefined
            ? loaded.emoticon5
            : BuildConfig.defaultKeyConfig.emoticon5);
  }

  void addOnKeyConfigChangeEventHandler(Function() handler) {
    onKeyConfigChangeEventHandlers.add(handler);
  }

  void callOnKeyConfigChangeEventHandlers() {
    onKeyConfigChangeEventHandlers.map((each) {
      each();
    });
  }

  SerialDevice get currentSerialDevice {
    if (_serialDevices.containsKey(currentSerialDevicePort)) {
      return _serialDevices[currentSerialDevicePort]!;
    }
    _serialDevices[currentSerialDevicePort] =
        SerialDevice(currentSerialDevicePort);
    return _serialDevices[currentSerialDevicePort]!;
  }

  Future<SerialDeviceState> requestHandshakeCurrentDevice() async {
    SerialDevice current = currentSerialDevice;
    SerialHandshakeResult serialHandshakeResult = await current
        .requestHandshake(requestedSerialDevicePort: currentSerialDevicePort);

    applyCurrentSerialDeviceIsValid(
        serialHandshakeResult.port, serialHandshakeResult.data);
    return currentSerialDeviceState;
  }

  void applyCurrentSerialDeviceIsValid(
      String requestedSerialDevicePort, SerialDeviceState state) {
    if (currentSerialDevicePort != requestedSerialDevicePort) {
      currentSerialDeviceState = SerialDeviceState.expired;
      return;
    }
    currentSerialDeviceState = state;
  }

  Future<KeyConfig?> requestLoadSavedKeyConfiguration() async {
    SerialDevice current = currentSerialDevice;
    SerialLoadSavedKeyConfigurationResult
        serialLoadSavedKeyConfigurationResult =
        await current.requestLoadSavedKeyConfiguration(
            requestedSerialDevicePort: currentSerialDevicePort);

    if (currentSerialDevicePort != serialLoadSavedKeyConfigurationResult.port) {
      return null;
    }
    if (serialLoadSavedKeyConfigurationResult.data == null) {
      return null;
    }
    keyConfig = serialLoadSavedKeyConfigurationResult.data!;
    requestRefreshKeyConfigValueDisplayerWithKey();
    return keyConfig;
  }

  Future<KeyConfig?> requestSaveKeyConfiguration() async {
    SerialDevice current = currentSerialDevice;
    SerialLoadSavedKeyConfigurationResult
        serialLoadSavedKeyConfigurationResult =
        await current.requestLoadSavedKeyConfiguration(
            requestedSerialDevicePort: currentSerialDevicePort);

    if (currentSerialDevicePort != serialLoadSavedKeyConfigurationResult.port) {
      return null;
    }
    if (serialLoadSavedKeyConfigurationResult.data == null) {
      return null;
    }
    keyConfig = serialLoadSavedKeyConfigurationResult.data!;
    requestRefreshKeyConfigValueDisplayerWithKey();
    return keyConfig;
  }

/*
  void requestGetCurrentSerialDeviceConfig() {
    /// Load device's keyconfig data
    ///
    /// Below errors must be handled:
    /// - SerialPortNotInstantiatedWell
    /// - SerialPortCannotOpen
    /// - StreamControllerNotInstantiatedWell
    /// - TimeoutException
    /// - SerialPortCommunicationDoneIncompleted
    SerialDevice current = currentSerialDevice;
    unawaited(current.requestLoadKeyConfiguration().catchError((e) {
      switch (e.runtimeType) {
        case SerialPortNotInstantiatedWell:
        case SerialPortCannotOpen:
        case StreamControllerNotInstantiatedWell:
        case TimeoutException:
      }
    }));
  }*/

  void requestRefreshKeyConfigValueDisplayerWithKey() {
    keyConfigGlobalKeys?.esc.currentState?.updateValue(keyConfig.esc);
    keyConfigGlobalKeys?.enter.currentState?.updateValue(keyConfig.enter);
    keyConfigGlobalKeys?.tab.currentState?.updateValue(keyConfig.tab);
    keyConfigGlobalKeys?.space.currentState?.updateValue(keyConfig.space);
    keyConfigGlobalKeys?.speedUp.currentState?.updateValue(keyConfig.speedUp);
    keyConfigGlobalKeys?.speedDown.currentState
        ?.updateValue(keyConfig.speedDown);
    keyConfigGlobalKeys?.rewind.currentState?.updateValue(keyConfig.rewind);
    keyConfigGlobalKeys?.leftShift.currentState
        ?.updateValue(keyConfig.leftShift);
    keyConfigGlobalKeys?.rightShift.currentState
        ?.updateValue(keyConfig.rightShift);
    keyConfigGlobalKeys?.arrowUp.currentState?.updateValue(keyConfig.arrowUp);
    keyConfigGlobalKeys?.arrowDown.currentState
        ?.updateValue(keyConfig.arrowDown);
    keyConfigGlobalKeys?.arrowLeft.currentState
        ?.updateValue(keyConfig.arrowLeft);
    keyConfigGlobalKeys?.arrowRight.currentState
        ?.updateValue(keyConfig.arrowRight);
    keyConfigGlobalKeys?.tuneLeftSide.currentState
        ?.updateValue(keyConfig.tuneLeftSide);
    keyConfigGlobalKeys?.tuneS.currentState?.updateValue(keyConfig.tuneS);
    keyConfigGlobalKeys?.tuneD.currentState?.updateValue(keyConfig.tuneD);
    keyConfigGlobalKeys?.tuneF.currentState?.updateValue(keyConfig.tuneF);
    keyConfigGlobalKeys?.tuneC.currentState?.updateValue(keyConfig.tuneC);
    keyConfigGlobalKeys?.tuneM.currentState?.updateValue(keyConfig.tuneM);
    keyConfigGlobalKeys?.tuneJ.currentState?.updateValue(keyConfig.tuneJ);
    keyConfigGlobalKeys?.tuneK.currentState?.updateValue(keyConfig.tuneK);
    keyConfigGlobalKeys?.tuneL.currentState?.updateValue(keyConfig.tuneL);
    keyConfigGlobalKeys?.tuneRightSide.currentState
        ?.updateValue(keyConfig.tuneRightSide);
    keyConfigGlobalKeys?.emoticon1.currentState
        ?.updateValue(keyConfig.emoticon1);
    keyConfigGlobalKeys?.emoticon2.currentState
        ?.updateValue(keyConfig.emoticon2);
    keyConfigGlobalKeys?.emoticon3.currentState
        ?.updateValue(keyConfig.emoticon3);
    keyConfigGlobalKeys?.emoticon4.currentState
        ?.updateValue(keyConfig.emoticon4);
    keyConfigGlobalKeys?.emoticon5.currentState
        ?.updateValue(keyConfig.emoticon5);
  }

  Future<bool> saveCurrentSerialDeviceConfig() async {
    // await request..
    keyConfig = KeyConfig.clone(updatedKeyConfig);
    SerialDevice current = currentSerialDevice;
    SerialLoadSavedKeyConfigurationResult result =
        await current.requestSaveKeyConfiguration(
            requestedSerialDevicePort: currentSerialDevicePort);
    requestRefreshKeyConfigValueDisplayerWithKey();
    return result.data != null;
  }

  void revertCurrentSerialDeviceConfig() async {
    // await request..
    updatedKeyConfig = KeyConfig.clone(keyConfig);
    callOnKeyConfigChangeEventHandlers();
    requestRefreshKeyConfigValueDisplayerWithKey();
  }

  void applyCurrentSerialDeviceKeyConfigToThis(KeyConfig keyConfig) {
    this.keyConfig = KeyConfig.clone(keyConfig);
    updatedKeyConfig = KeyConfig.clone(keyConfig);
    callOnKeyConfigChangeEventHandlers();
  }
}
