// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bpm_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BpmZoneChange _$BpmZoneChangeFromJson(Map<String, dynamic> json) {
  return _BpmZoneChange.fromJson(json);
}

/// @nodoc
mixin _$BpmZoneChange {
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "zona_anterior")
  BpmZone get zonaAnterior => throw _privateConstructorUsedError;
  @JsonKey(name: "zona_nueva")
  BpmZone get zonaNueva => throw _privateConstructorUsedError;
  @JsonKey(name: "bpm_actual")
  double get bpmActual => throw _privateConstructorUsedError;
  @JsonKey(name: "timestamp")
  int get timestamp => throw _privateConstructorUsedError;

  /// Serializes this BpmZoneChange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BpmZoneChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BpmZoneChangeCopyWith<BpmZoneChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BpmZoneChangeCopyWith<$Res> {
  factory $BpmZoneChangeCopyWith(
    BpmZoneChange value,
    $Res Function(BpmZoneChange) then,
  ) = _$BpmZoneChangeCopyWithImpl<$Res, BpmZoneChange>;
  @useResult
  $Res call({
    @JsonKey(name: "user_id") String userId,
    @JsonKey(name: "zona_anterior") BpmZone zonaAnterior,
    @JsonKey(name: "zona_nueva") BpmZone zonaNueva,
    @JsonKey(name: "bpm_actual") double bpmActual,
    @JsonKey(name: "timestamp") int timestamp,
  });
}

/// @nodoc
class _$BpmZoneChangeCopyWithImpl<$Res, $Val extends BpmZoneChange>
    implements $BpmZoneChangeCopyWith<$Res> {
  _$BpmZoneChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BpmZoneChange
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
                      as BpmZone,
            zonaNueva: null == zonaNueva
                ? _value.zonaNueva
                : zonaNueva // ignore: cast_nullable_to_non_nullable
                      as BpmZone,
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
abstract class _$$BpmZoneChangeImplCopyWith<$Res>
    implements $BpmZoneChangeCopyWith<$Res> {
  factory _$$BpmZoneChangeImplCopyWith(
    _$BpmZoneChangeImpl value,
    $Res Function(_$BpmZoneChangeImpl) then,
  ) = __$$BpmZoneChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "user_id") String userId,
    @JsonKey(name: "zona_anterior") BpmZone zonaAnterior,
    @JsonKey(name: "zona_nueva") BpmZone zonaNueva,
    @JsonKey(name: "bpm_actual") double bpmActual,
    @JsonKey(name: "timestamp") int timestamp,
  });
}

/// @nodoc
class __$$BpmZoneChangeImplCopyWithImpl<$Res>
    extends _$BpmZoneChangeCopyWithImpl<$Res, _$BpmZoneChangeImpl>
    implements _$$BpmZoneChangeImplCopyWith<$Res> {
  __$$BpmZoneChangeImplCopyWithImpl(
    _$BpmZoneChangeImpl _value,
    $Res Function(_$BpmZoneChangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BpmZoneChange
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
      _$BpmZoneChangeImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        zonaAnterior: null == zonaAnterior
            ? _value.zonaAnterior
            : zonaAnterior // ignore: cast_nullable_to_non_nullable
                  as BpmZone,
        zonaNueva: null == zonaNueva
            ? _value.zonaNueva
            : zonaNueva // ignore: cast_nullable_to_non_nullable
                  as BpmZone,
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
class _$BpmZoneChangeImpl implements _BpmZoneChange {
  const _$BpmZoneChangeImpl({
    @JsonKey(name: "user_id") required this.userId,
    @JsonKey(name: "zona_anterior") required this.zonaAnterior,
    @JsonKey(name: "zona_nueva") required this.zonaNueva,
    @JsonKey(name: "bpm_actual") required this.bpmActual,
    @JsonKey(name: "timestamp") required this.timestamp,
  });

  factory _$BpmZoneChangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BpmZoneChangeImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "zona_anterior")
  final BpmZone zonaAnterior;
  @override
  @JsonKey(name: "zona_nueva")
  final BpmZone zonaNueva;
  @override
  @JsonKey(name: "bpm_actual")
  final double bpmActual;
  @override
  @JsonKey(name: "timestamp")
  final int timestamp;

  @override
  String toString() {
    return 'BpmZoneChange(userId: $userId, zonaAnterior: $zonaAnterior, zonaNueva: $zonaNueva, bpmActual: $bpmActual, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BpmZoneChangeImpl &&
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

  /// Create a copy of BpmZoneChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BpmZoneChangeImplCopyWith<_$BpmZoneChangeImpl> get copyWith =>
      __$$BpmZoneChangeImplCopyWithImpl<_$BpmZoneChangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BpmZoneChangeImplToJson(this);
  }
}

abstract class _BpmZoneChange implements BpmZoneChange {
  const factory _BpmZoneChange({
    @JsonKey(name: "user_id") required final String userId,
    @JsonKey(name: "zona_anterior") required final BpmZone zonaAnterior,
    @JsonKey(name: "zona_nueva") required final BpmZone zonaNueva,
    @JsonKey(name: "bpm_actual") required final double bpmActual,
    @JsonKey(name: "timestamp") required final int timestamp,
  }) = _$BpmZoneChangeImpl;

  factory _BpmZoneChange.fromJson(Map<String, dynamic> json) =
      _$BpmZoneChangeImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "zona_anterior")
  BpmZone get zonaAnterior;
  @override
  @JsonKey(name: "zona_nueva")
  BpmZone get zonaNueva;
  @override
  @JsonKey(name: "bpm_actual")
  double get bpmActual;
  @override
  @JsonKey(name: "timestamp")
  int get timestamp;

  /// Create a copy of BpmZoneChange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BpmZoneChangeImplCopyWith<_$BpmZoneChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BpmCurrent _$BpmCurrentFromJson(Map<String, dynamic> json) {
  return _BpmCurrent.fromJson(json);
}

/// @nodoc
mixin _$BpmCurrent {
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "bpm")
  double get bpm => throw _privateConstructorUsedError;
  @JsonKey(name: "zone")
  BpmZone get zone => throw _privateConstructorUsedError;
  @JsonKey(name: "timestamp")
  int get timestamp => throw _privateConstructorUsedError;

  /// Serializes this BpmCurrent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BpmCurrent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BpmCurrentCopyWith<BpmCurrent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BpmCurrentCopyWith<$Res> {
  factory $BpmCurrentCopyWith(
    BpmCurrent value,
    $Res Function(BpmCurrent) then,
  ) = _$BpmCurrentCopyWithImpl<$Res, BpmCurrent>;
  @useResult
  $Res call({
    @JsonKey(name: "user_id") String userId,
    @JsonKey(name: "bpm") double bpm,
    @JsonKey(name: "zone") BpmZone zone,
    @JsonKey(name: "timestamp") int timestamp,
  });
}

/// @nodoc
class _$BpmCurrentCopyWithImpl<$Res, $Val extends BpmCurrent>
    implements $BpmCurrentCopyWith<$Res> {
  _$BpmCurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BpmCurrent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? bpm = null,
    Object? zone = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            bpm: null == bpm
                ? _value.bpm
                : bpm // ignore: cast_nullable_to_non_nullable
                      as double,
            zone: null == zone
                ? _value.zone
                : zone // ignore: cast_nullable_to_non_nullable
                      as BpmZone,
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
abstract class _$$BpmCurrentImplCopyWith<$Res>
    implements $BpmCurrentCopyWith<$Res> {
  factory _$$BpmCurrentImplCopyWith(
    _$BpmCurrentImpl value,
    $Res Function(_$BpmCurrentImpl) then,
  ) = __$$BpmCurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "user_id") String userId,
    @JsonKey(name: "bpm") double bpm,
    @JsonKey(name: "zone") BpmZone zone,
    @JsonKey(name: "timestamp") int timestamp,
  });
}

/// @nodoc
class __$$BpmCurrentImplCopyWithImpl<$Res>
    extends _$BpmCurrentCopyWithImpl<$Res, _$BpmCurrentImpl>
    implements _$$BpmCurrentImplCopyWith<$Res> {
  __$$BpmCurrentImplCopyWithImpl(
    _$BpmCurrentImpl _value,
    $Res Function(_$BpmCurrentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BpmCurrent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? bpm = null,
    Object? zone = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$BpmCurrentImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        bpm: null == bpm
            ? _value.bpm
            : bpm // ignore: cast_nullable_to_non_nullable
                  as double,
        zone: null == zone
            ? _value.zone
            : zone // ignore: cast_nullable_to_non_nullable
                  as BpmZone,
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
class _$BpmCurrentImpl implements _BpmCurrent {
  const _$BpmCurrentImpl({
    @JsonKey(name: "user_id") required this.userId,
    @JsonKey(name: "bpm") required this.bpm,
    @JsonKey(name: "zone") required this.zone,
    @JsonKey(name: "timestamp") required this.timestamp,
  });

  factory _$BpmCurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$BpmCurrentImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "bpm")
  final double bpm;
  @override
  @JsonKey(name: "zone")
  final BpmZone zone;
  @override
  @JsonKey(name: "timestamp")
  final int timestamp;

  @override
  String toString() {
    return 'BpmCurrent(userId: $userId, bpm: $bpm, zone: $zone, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BpmCurrentImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bpm, bpm) || other.bpm == bpm) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, bpm, zone, timestamp);

  /// Create a copy of BpmCurrent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BpmCurrentImplCopyWith<_$BpmCurrentImpl> get copyWith =>
      __$$BpmCurrentImplCopyWithImpl<_$BpmCurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BpmCurrentImplToJson(this);
  }
}

abstract class _BpmCurrent implements BpmCurrent {
  const factory _BpmCurrent({
    @JsonKey(name: "user_id") required final String userId,
    @JsonKey(name: "bpm") required final double bpm,
    @JsonKey(name: "zone") required final BpmZone zone,
    @JsonKey(name: "timestamp") required final int timestamp,
  }) = _$BpmCurrentImpl;

  factory _BpmCurrent.fromJson(Map<String, dynamic> json) =
      _$BpmCurrentImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "bpm")
  double get bpm;
  @override
  @JsonKey(name: "zone")
  BpmZone get zone;
  @override
  @JsonKey(name: "timestamp")
  int get timestamp;

  /// Create a copy of BpmCurrent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BpmCurrentImplCopyWith<_$BpmCurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
