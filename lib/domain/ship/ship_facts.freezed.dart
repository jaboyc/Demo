// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ship_facts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipFacts _$ShipFactsFromJson(Map<String, dynamic> json) {
  return _ShipFacts.fromJson(json);
}

/// @nodoc
mixin _$ShipFacts {
  String get passengerCapacity => throw _privateConstructorUsedError;
  String get crew => throw _privateConstructorUsedError;
  String get inauguralDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipFactsCopyWith<ShipFacts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipFactsCopyWith<$Res> {
  factory $ShipFactsCopyWith(ShipFacts value, $Res Function(ShipFacts) then) =
      _$ShipFactsCopyWithImpl<$Res, ShipFacts>;
  @useResult
  $Res call({String passengerCapacity, String crew, String inauguralDate});
}

/// @nodoc
class _$ShipFactsCopyWithImpl<$Res, $Val extends ShipFacts>
    implements $ShipFactsCopyWith<$Res> {
  _$ShipFactsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passengerCapacity = null,
    Object? crew = null,
    Object? inauguralDate = null,
  }) {
    return _then(_value.copyWith(
      passengerCapacity: null == passengerCapacity
          ? _value.passengerCapacity
          : passengerCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as String,
      inauguralDate: null == inauguralDate
          ? _value.inauguralDate
          : inauguralDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipFactsCopyWith<$Res> implements $ShipFactsCopyWith<$Res> {
  factory _$$_ShipFactsCopyWith(
          _$_ShipFacts value, $Res Function(_$_ShipFacts) then) =
      __$$_ShipFactsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String passengerCapacity, String crew, String inauguralDate});
}

/// @nodoc
class __$$_ShipFactsCopyWithImpl<$Res>
    extends _$ShipFactsCopyWithImpl<$Res, _$_ShipFacts>
    implements _$$_ShipFactsCopyWith<$Res> {
  __$$_ShipFactsCopyWithImpl(
      _$_ShipFacts _value, $Res Function(_$_ShipFacts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passengerCapacity = null,
    Object? crew = null,
    Object? inauguralDate = null,
  }) {
    return _then(_$_ShipFacts(
      passengerCapacity: null == passengerCapacity
          ? _value.passengerCapacity
          : passengerCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as String,
      inauguralDate: null == inauguralDate
          ? _value.inauguralDate
          : inauguralDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipFacts implements _ShipFacts {
  const _$_ShipFacts(
      {required this.passengerCapacity,
      required this.crew,
      required this.inauguralDate});

  factory _$_ShipFacts.fromJson(Map<String, dynamic> json) =>
      _$$_ShipFactsFromJson(json);

  @override
  final String passengerCapacity;
  @override
  final String crew;
  @override
  final String inauguralDate;

  @override
  String toString() {
    return 'ShipFacts(passengerCapacity: $passengerCapacity, crew: $crew, inauguralDate: $inauguralDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipFacts &&
            (identical(other.passengerCapacity, passengerCapacity) ||
                other.passengerCapacity == passengerCapacity) &&
            (identical(other.crew, crew) || other.crew == crew) &&
            (identical(other.inauguralDate, inauguralDate) ||
                other.inauguralDate == inauguralDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, passengerCapacity, crew, inauguralDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipFactsCopyWith<_$_ShipFacts> get copyWith =>
      __$$_ShipFactsCopyWithImpl<_$_ShipFacts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipFactsToJson(
      this,
    );
  }
}

abstract class _ShipFacts implements ShipFacts {
  const factory _ShipFacts(
      {required final String passengerCapacity,
      required final String crew,
      required final String inauguralDate}) = _$_ShipFacts;

  factory _ShipFacts.fromJson(Map<String, dynamic> json) =
      _$_ShipFacts.fromJson;

  @override
  String get passengerCapacity;
  @override
  String get crew;
  @override
  String get inauguralDate;
  @override
  @JsonKey(ignore: true)
  _$$_ShipFactsCopyWith<_$_ShipFacts> get copyWith =>
      throw _privateConstructorUsedError;
}
