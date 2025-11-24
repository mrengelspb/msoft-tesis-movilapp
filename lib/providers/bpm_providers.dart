import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mqtt5_client/mqtt5_client.dart';
import 'package:mqttapp/models/bpm_events.dart';
import 'package:mqttapp/providers/mqtt_client.dart';

final bpmCurrentValueProvider = StreamProvider((ref) async* {
  final client = await ref.read(mqttClient.future);
  const topic = 'msoft/msrr/status';
  client.subscribe(topic, MqttQos.atLeastOnce);
  ref.onDispose(() {
    print("disposed sub");
    client.unsubscribeStringTopic(topic);
  });
  await for (final value in client.updates) {
    final msg = value[0].payload;
    if (msg is MqttPublishMessage) {
      final pt = MqttUtilities.bytesToStringAsString(msg.payload.message!);
      try {
        final ev = BpmCurrent.fromJson(jsonDecode(pt));
        yield ev;
      } catch (_) {}
    }
  }
});

final bpmZoneChangeProvider = StreamProvider((ref) async* {
  final client = await ref.read(mqttClient.future);
  const topic = 'msoft/msrr/zone_change';
  client.subscribe(topic, MqttQos.atLeastOnce);
  ref.onDispose(() {
    print("disposed sub");
    client.unsubscribeStringTopic(topic);
  });
  await for (final value in client.updates) {
    final msg = value[0].payload;
    if (msg is MqttPublishMessage) {
      final pt = MqttUtilities.bytesToStringAsString(msg.payload.message!);
      try {
        final ev = BpmZoneChange.fromJson(jsonDecode(pt));
        yield ev;
      } catch (_) {}
    }
  }
});
