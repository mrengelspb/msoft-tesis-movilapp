import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mqtt5_client/mqtt5_client.dart';
import 'package:mqtt5_client/mqtt5_server_client.dart';

final mqttClient = FutureProvider((ref) async {
  final client = MqttServerClient.withPort("10.0.2.2", "bpm_app", 1883);
  await client.connect();
  if (client.connectionStatus!.state == MqttConnectionState.connected) {
    print('client connected');
  }
  ref.onDispose(() {
    print("disposed client");
    client.disconnect();
  });
  return client;
});
