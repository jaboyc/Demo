import 'package:assessment/domain/ship/ship.dart';

abstract class ShipRepository {
  Future<Ship> getShip(String name);
}
