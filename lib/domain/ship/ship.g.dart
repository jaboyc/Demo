// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ship _$$_ShipFromJson(Map<String, dynamic> json) => _$_Ship(
      name: json['name'] as String,
      shipFacts: ShipFacts.fromJson(json['shipFacts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShipToJson(_$_Ship instance) => <String, dynamic>{
      'name': instance.name,
      'shipFacts': instance.shipFacts,
    };
