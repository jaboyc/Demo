import 'package:assessment/domain/ship/ship_facts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ship.freezed.dart';

part 'ship.g.dart';

@freezed
class Ship with _$Ship {
  const factory Ship({required String name, required ShipFacts shipFacts}) = _Ship;

  factory Ship.fromJson(Map<String, Object?> json) => _$ShipFromJson(json);
}
