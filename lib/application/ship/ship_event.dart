abstract class ShipEvent {}

class ShipLoadEvent implements ShipEvent {
  final String name;

  const ShipLoadEvent({required this.name});
}
