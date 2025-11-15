import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mqtt5_client/mqtt5_client.dart';
import 'package:mqtt5_client/mqtt5_server_client.dart';
import 'package:mqttapp/models/bpm_event.dart';

final bpmStreamProvider = StreamProvider((ref) async* {
  final client = MqttServerClient.withPort("10.0.2.2", "bpm_app", 1883);
  ref.onDispose(() => client.disconnect());
  await client.connect();
  if (client.connectionStatus!.state == MqttConnectionState.connected) {
    print('client connected');
  }
  const topic = 'msoft/msrr/zone_change';
  client.subscribe(topic, MqttQos.atLeastOnce);
  ref.onDispose(() => client.unsubscribeStringTopic(topic));
  await for (final value in client.updates) {
    print(value.toString());
    final msg = value[0].payload;
    if (msg is MqttPublishMessage) {
      final pt = MqttUtilities.bytesToStringAsString(msg.payload.message!);
      yield BpmEvent.fromJson(jsonDecode(pt));
    }
  }
});
