import 'package:assessment/domain/ship/ship.dart';

abstract class ShipState {}

class ShipInitialState implements ShipState {}

class ShipLoadingState implements ShipState {}

class ShipLoadedState implements ShipState {
  final Ship ship;

  const ShipLoadedState({required this.ship});
}

class ShipErrorState implements ShipState {
  final Object error;

  const ShipErrorState({required this.error});
}
