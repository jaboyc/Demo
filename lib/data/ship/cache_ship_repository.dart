import 'package:assessment/domain/ship/ship.dart';
import 'package:assessment/domain/ship/ship_repository.dart';

class CacheShipRepository implements ShipRepository {
  final ShipRepository sourceRepository;
  final Map<String, Ship> _cachedShipByName;

  CacheShipRepository({required this.sourceRepository}) : _cachedShipByName = {};

  @override
  Future<Ship> getShip(String name) async {
    if (_cachedShipByName.containsKey(name)) {
      return _cachedShipByName[name]!;
    }

    final sourceShip = await sourceRepository.getShip(name);
    _cachedShipByName[name] = sourceShip;
    return sourceShip;
  }
}
