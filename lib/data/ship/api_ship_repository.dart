import 'package:assessment/domain/ship/ship.dart';
import 'package:assessment/domain/ship/ship_repository.dart';
import 'package:dio/dio.dart';

class ApiShipRepository implements ShipRepository {
  final dio = Dio();

  @override
  Future<Ship> getShip(String name) async {
    final response = await dio.getUri<Map<String, dynamic>>(
      Uri(
        scheme: 'https',
        host: 'www.ncl.com',
        pathSegments: ['cms-service', 'cruise-ships', name],
      ),
    );

    return Ship.fromJson(response.data ?? (throw Exception('Could not find ship with name: [$name]')));
  }
}
