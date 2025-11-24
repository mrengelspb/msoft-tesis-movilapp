import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bpm_events.freezed.dart';
part 'bpm_events.g.dart';

@JsonEnum(valueField: "value")
enum BpmZone {
  one(1, "REPOSO", Color.fromRGBO(84, 223, 216, 1), Color.fromRGBO(60, 142, 155, 1)),
  two(2, "OXIDATIVA", Color.fromRGBO(87, 179, 130, 1), Color.fromRGBO(60, 155, 96, 1)),
  three(
    3,
    "GLICOLITICA 1",
    Color.fromRGBO(105, 84, 223, 1),
    Color.fromRGBO(62, 60, 155, 1),
  ),
  four(
    4,
    "GLICOLITICA 2",
    Color.fromRGBO(205, 223, 84, 1),
    Color.fromRGBO(142, 155, 60, 1),
  ),
  five(5, "FOSFAGENICA", Color.fromRGBO(223, 128, 84, 1), Color.fromRGBO(155, 82, 60, 1));

  const BpmZone(this.value, this.name, this.progressForeground, this.progressBackground);
  final int value;
  final String name;
  final Color progressForeground;
  final Color progressBackground;
}

@freezed
class BpmZoneChange with _$BpmZoneChange {
  const factory BpmZoneChange({
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "zona_anterior") required BpmZone zonaAnterior,
    @JsonKey(name: "zona_nueva") required BpmZone zonaNueva,
    @JsonKey(name: "bpm_actual") required double bpmActual,
    @JsonKey(name: "timestamp") required int timestamp,
  }) = _BpmZoneChange;

  factory BpmZoneChange.fromJson(Map<String, dynamic> json) =>
      _$BpmZoneChangeFromJson(json);
}

@freezed
class BpmCurrent with _$BpmCurrent {
  const factory BpmCurrent({
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "bpm") required double bpm,
    @JsonKey(name: "zone") required BpmZone zone,
    @JsonKey(name: "timestamp") required int timestamp,
  }) = _BpmCurrent;

  factory BpmCurrent.fromJson(Map<String, dynamic> json) => _$BpmCurrentFromJson(json);
}
