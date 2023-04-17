import 'package:assessment/domain/ship/ship.dart';
import 'package:flutter/material.dart';

class ShipInfoCard extends StatelessWidget {
  final Ship ship;

  const ShipInfoCard({super.key, required this.ship});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            ship.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Divider(),
          Text('Passenger Capacity: ${ship.shipFacts.passengerCapacity}'),
          Text('Crew: ${ship.shipFacts.crew}'),
          Text('Inaugural Date: ${ship.shipFacts.inauguralDate}'),
        ],
      ),
    );
  }
}
