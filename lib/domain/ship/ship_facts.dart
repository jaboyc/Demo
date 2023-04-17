import 'package:freezed_annotation/freezed_annotation.dart';

part 'ship_facts.freezed.dart';

part 'ship_facts.g.dart';

@freezed
class ShipFacts with _$ShipFacts {
  const factory ShipFacts({
    required String passengerCapacity,
    required String crew,
    required String inauguralDate,
  }) = _ShipFacts;

  factory ShipFacts.fromJson(Map<String, Object?> json) => _$ShipFactsFromJson(json);
}
