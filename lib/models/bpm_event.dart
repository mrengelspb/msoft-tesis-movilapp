import 'package:freezed_annotation/freezed_annotation.dart';

part 'bpm_event.freezed.dart';
part 'bpm_event.g.dart';

@freezed
class BpmEvent with _$BpmEvent {
  const factory BpmEvent({
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "zona_anterior") required int zonaAnterior,
    @JsonKey(name: "zona_nueva") required int zonaNueva,
    @JsonKey(name: "bpm_actual") required double bpmActual,
    @JsonKey(name: "timestamp") required int timestamp,
  }) = _BpmEvent;

  factory BpmEvent.fromJson(Map<String, dynamic> json) => _$BpmEventFromJson(json);
}
