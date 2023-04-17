import 'package:assessment/domain/ship/ship.dart';
import 'package:assessment/domain/ship/ship_facts.dart';
import 'package:assessment/domain/ship/ship_repository.dart';

class MockShipRepository implements ShipRepository {
  @override
  Future<Ship> getShip() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Ship(
        name: 'Test Ship',
        shipFacts: ShipFacts(
          passengerCapacity: '350',
          crew: '124',
          inauguralDate: '1999',
        ));
  }
}
