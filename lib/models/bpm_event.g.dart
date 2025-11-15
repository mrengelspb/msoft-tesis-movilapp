// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bpm_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BpmEventImpl _$$BpmEventImplFromJson(Map<String, dynamic> json) =>
    _$BpmEventImpl(
      userId: json['user_id'] as String,
      zonaAnterior: (json['zona_anterior'] as num).toInt(),
      zonaNueva: (json['zona_nueva'] as num).toInt(),
      bpmActual: (json['bpm_actual'] as num).toDouble(),
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$$BpmEventImplToJson(_$BpmEventImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'zona_anterior': instance.zonaAnterior,
      'zona_nueva': instance.zonaNueva,
      'bpm_actual': instance.bpmActual,
      'timestamp': instance.timestamp,
    };
