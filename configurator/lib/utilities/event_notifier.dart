import 'package:flutter/material.dart';
import 'package:configurator/models/notifying_events.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EventNotifier {
  static String eventNotifyingMessage(
      BuildContext context, NotifyingEvents event) {
    switch (event) {
      case NotifyingEvents.serialDeviceDoesNotResponse:
        return AppLocalizations.of(context)!
            .notifyingEventsSerialDeviceDoesNotResponse;
      case NotifyingEvents.serialDeviceDoesNotResponseMayInvalidDevice:
        return AppLocalizations.of(context)!
            .notifyingEventsSerialDeviceDoesNotResponse_mayInvalidDevice;
      case NotifyingEvents.serialDeviceConfigSaveComplete:
        return AppLocalizations.of(context)!
            .notifyingEventsSerialDeviceConfigSaveComplete;
      case NotifyingEvents.serialDeviceConfigSaveError:
        return AppLocalizations.of(context)!
            .notifyingEventsSerialDeviceConfigSaveError;
      case NotifyingEvents.serialDeviceConfigSaveErrorDataReceivedIncompletely:
        return AppLocalizations.of(context)!
            .notifyingEventsSerialDeviceConfigSaveErrorDataReceivedIncompletely;
      case NotifyingEvents.serialDeviceConfigSaveErrorDataReturnedIncompletely:
        return AppLocalizations.of(context)!
            .notifyingEventsSerialDeviceConfigSaveErrorDataReturnedIncompletely;
    }
  }
}
