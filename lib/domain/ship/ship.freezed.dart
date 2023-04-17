// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ship _$ShipFromJson(Map<String, dynamic> json) {
  return _Ship.fromJson(json);
}

/// @nodoc
mixin _$Ship {
  String get name => throw _privateConstructorUsedError;
  ShipFacts get shipFacts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipCopyWith<Ship> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipCopyWith<$Res> {
  factory $ShipCopyWith(Ship value, $Res Function(Ship) then) =
      _$ShipCopyWithImpl<$Res, Ship>;
  @useResult
  $Res call({String name, ShipFacts shipFacts});

  $ShipFactsCopyWith<$Res> get shipFacts;
}

/// @nodoc
class _$ShipCopyWithImpl<$Res, $Val extends Ship>
    implements $ShipCopyWith<$Res> {
  _$ShipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shipFacts = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shipFacts: null == shipFacts
          ? _value.shipFacts
          : shipFacts // ignore: cast_nullable_to_non_nullable
              as ShipFacts,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShipFactsCopyWith<$Res> get shipFacts {
    return $ShipFactsCopyWith<$Res>(_value.shipFacts, (value) {
      return _then(_value.copyWith(shipFacts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShipCopyWith<$Res> implements $ShipCopyWith<$Res> {
  factory _$$_ShipCopyWith(_$_Ship value, $Res Function(_$_Ship) then) =
      __$$_ShipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, ShipFacts shipFacts});

  @override
  $ShipFactsCopyWith<$Res> get shipFacts;
}

/// @nodoc
class __$$_ShipCopyWithImpl<$Res> extends _$ShipCopyWithImpl<$Res, _$_Ship>
    implements _$$_ShipCopyWith<$Res> {
  __$$_ShipCopyWithImpl(_$_Ship _value, $Res Function(_$_Ship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shipFacts = null,
  }) {
    return _then(_$_Ship(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shipFacts: null == shipFacts
          ? _value.shipFacts
          : shipFacts // ignore: cast_nullable_to_non_nullable
              as ShipFacts,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ship implements _Ship {
  const _$_Ship({required this.name, required this.shipFacts});

  factory _$_Ship.fromJson(Map<String, dynamic> json) => _$$_ShipFromJson(json);

  @override
  final String name;
  @override
  final ShipFacts shipFacts;

  @override
  String toString() {
    return 'Ship(name: $name, shipFacts: $shipFacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ship &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shipFacts, shipFacts) ||
                other.shipFacts == shipFacts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, shipFacts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipCopyWith<_$_Ship> get copyWith =>
      __$$_ShipCopyWithImpl<_$_Ship>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipToJson(
      this,
    );
  }
}

abstract class _Ship implements Ship {
  const factory _Ship(
      {required final String name,
      required final ShipFacts shipFacts}) = _$_Ship;

  factory _Ship.fromJson(Map<String, dynamic> json) = _$_Ship.fromJson;

  @override
  String get name;
  @override
  ShipFacts get shipFacts;
  @override
  @JsonKey(ignore: true)
  _$$_ShipCopyWith<_$_Ship> get copyWith => throw _privateConstructorUsedError;
}
