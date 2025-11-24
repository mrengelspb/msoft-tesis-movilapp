// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bpm_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BpmZoneChangeImpl _$$BpmZoneChangeImplFromJson(Map<String, dynamic> json) =>
    _$BpmZoneChangeImpl(
      userId: json['user_id'] as String,
      zonaAnterior: $enumDecode(_$BpmZoneEnumMap, json['zona_anterior']),
      zonaNueva: $enumDecode(_$BpmZoneEnumMap, json['zona_nueva']),
      bpmActual: (json['bpm_actual'] as num).toDouble(),
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$$BpmZoneChangeImplToJson(_$BpmZoneChangeImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'zona_anterior': _$BpmZoneEnumMap[instance.zonaAnterior]!,
      'zona_nueva': _$BpmZoneEnumMap[instance.zonaNueva]!,
      'bpm_actual': instance.bpmActual,
      'timestamp': instance.timestamp,
    };

const _$BpmZoneEnumMap = {
  BpmZone.one: 1,
  BpmZone.two: 2,
  BpmZone.three: 3,
  BpmZone.four: 4,
  BpmZone.five: 5,
};

_$BpmCurrentImpl _$$BpmCurrentImplFromJson(Map<String, dynamic> json) =>
    _$BpmCurrentImpl(
      userId: json['user_id'] as String,
      bpm: (json['bpm'] as num).toDouble(),
      zone: $enumDecode(_$BpmZoneEnumMap, json['zone']),
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$$BpmCurrentImplToJson(_$BpmCurrentImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'bpm': instance.bpm,
      'zone': _$BpmZoneEnumMap[instance.zone]!,
      'timestamp': instance.timestamp,
    };
