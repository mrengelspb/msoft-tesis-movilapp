// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bpm_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BpmEvent _$BpmEventFromJson(Map<String, dynamic> json) {
  return _BpmEvent.fromJson(json);
}

/// @nodoc
mixin _$BpmEvent {
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "zona_anterior")
  int get zonaAnterior => throw _privateConstructorUsedError;
  @JsonKey(name: "zona_nueva")
  int get zonaNueva => throw _privateConstructorUsedError;
  @JsonKey(name: "bpm_actual")
  double get bpmActual => throw _privateConstructorUsedError;
  @JsonKey(name: "timestamp")
  int get timestamp => throw _privateConstructorUsedError;

  /// Serializes this BpmEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BpmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BpmEventCopyWith<BpmEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BpmEventCopyWith<$Res> {
  factory $BpmEventCopyWith(BpmEvent value, $Res Function(BpmEvent) then) =
      _$BpmEventCopyWithImpl<$Res, BpmEvent>;
  @useResult
  $Res call({
    @JsonKey(name: "user_id") String userId,
    @JsonKey(name: "zona_anterior") int zonaAnterior,
    @JsonKey(name: "zona_nueva") int zonaNueva,
    @JsonKey(name: "bpm_actual") double bpmActual,
    @JsonKey(name: "timestamp") int timestamp,
  });
}

/// @nodoc
class _$BpmEventCopyWithImpl<$Res, $Val extends BpmEvent>
    implements $BpmEventCopyWith<$Res> {
  _$BpmEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BpmEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? zonaAnterior = null,
    Object? zonaNueva = null,
    Object? bpmActual = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            zonaAnterior: null == zonaAnterior
                ? _value.zonaAnterior
                : zonaAnterior // ignore: cast_nullable_to_non_nullable
                      as int,
            zonaNueva: null == zonaNueva
                ? _value.zonaNueva
                : zonaNueva // ignore: cast_nullable_to_non_nullable
                      as int,
            bpmActual: null == bpmActual
                ? _value.bpmActual
                : bpmActual // ignore: cast_nullable_to_non_nullable
                      as double,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BpmEventImplCopyWith<$Res>
    implements $BpmEventCopyWith<$Res> {
  factory _$$BpmEventImplCopyWith(
    _$BpmEventImpl value,
    $Res Function(_$BpmEventImpl) then,
  ) = __$$BpmEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "user_id") String userId,
    @JsonKey(name: "zona_anterior") int zonaAnterior,
    @JsonKey(name: "zona_nueva") int zonaNueva,
    @JsonKey(name: "bpm_actual") double bpmActual,
    @JsonKey(name: "timestamp") int timestamp,
  });
}

/// @nodoc
class __$$BpmEventImplCopyWithImpl<$Res>
    extends _$BpmEventCopyWithImpl<$Res, _$BpmEventImpl>
    implements _$$BpmEventImplCopyWith<$Res> {
  __$$BpmEventImplCopyWithImpl(
    _$BpmEventImpl _value,
    $Res Function(_$BpmEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BpmEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? zonaAnterior = null,
    Object? zonaNueva = null,
    Object? bpmActual = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$BpmEventImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        zonaAnterior: null == zonaAnterior
            ? _value.zonaAnterior
            : zonaAnterior // ignore: cast_nullable_to_non_nullable
                  as int,
        zonaNueva: null == zonaNueva
            ? _value.zonaNueva
            : zonaNueva // ignore: cast_nullable_to_non_nullable
                  as int,
        bpmActual: null == bpmActual
            ? _value.bpmActual
            : bpmActual // ignore: cast_nullable_to_non_nullable
                  as double,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BpmEventImpl implements _BpmEvent {
  const _$BpmEventImpl({
    @JsonKey(name: "user_id") required this.userId,
    @JsonKey(name: "zona_anterior") required this.zonaAnterior,
    @JsonKey(name: "zona_nueva") required this.zonaNueva,
    @JsonKey(name: "bpm_actual") required this.bpmActual,
    @JsonKey(name: "timestamp") required this.timestamp,
  });

  factory _$BpmEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$BpmEventImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "zona_anterior")
  final int zonaAnterior;
  @override
  @JsonKey(name: "zona_nueva")
  final int zonaNueva;
  @override
  @JsonKey(name: "bpm_actual")
  final double bpmActual;
  @override
  @JsonKey(name: "timestamp")
  final int timestamp;

  @override
  String toString() {
    return 'BpmEvent(userId: $userId, zonaAnterior: $zonaAnterior, zonaNueva: $zonaNueva, bpmActual: $bpmActual, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BpmEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.zonaAnterior, zonaAnterior) ||
                other.zonaAnterior == zonaAnterior) &&
            (identical(other.zonaNueva, zonaNueva) ||
                other.zonaNueva == zonaNueva) &&
            (identical(other.bpmActual, bpmActual) ||
                other.bpmActual == bpmActual) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    zonaAnterior,
    zonaNueva,
    bpmActual,
    timestamp,
  );

  /// Create a copy of BpmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BpmEventImplCopyWith<_$BpmEventImpl> get copyWith =>
      __$$BpmEventImplCopyWithImpl<_$BpmEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BpmEventImplToJson(this);
  }
}

abstract class _BpmEvent implements BpmEvent {
  const factory _BpmEvent({
    @JsonKey(name: "user_id") required final String userId,
    @JsonKey(name: "zona_anterior") required final int zonaAnterior,
    @JsonKey(name: "zona_nueva") required final int zonaNueva,
    @JsonKey(name: "bpm_actual") required final double bpmActual,
    @JsonKey(name: "timestamp") required final int timestamp,
  }) = _$BpmEventImpl;

  factory _BpmEvent.fromJson(Map<String, dynamic> json) =
      _$BpmEventImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "zona_anterior")
  int get zonaAnterior;
  @override
  @JsonKey(name: "zona_nueva")
  int get zonaNueva;
  @override
  @JsonKey(name: "bpm_actual")
  double get bpmActual;
  @override
  @JsonKey(name: "timestamp")
  int get timestamp;

  /// Create a copy of BpmEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BpmEventImplCopyWith<_$BpmEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
