import 'package:configurator/models/notifying_events.dart';
import 'package:configurator/utilities/event_notifier.dart';
import 'package:flutter/material.dart';

void showEventSnackBar(BuildContext context, NotifyingEvents notifyingEvent) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content:
          Text(EventNotifier.eventNotifyingMessage(context, notifyingEvent))));
}
