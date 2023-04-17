import 'package:assessment/application/ship/ship_bloc.dart';
import 'package:assessment/application/ship/ship_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShipSelectionButton extends StatelessWidget {
  final String displayName;
  final String internalName;

  const ShipSelectionButton({super.key, required this.displayName, required this.internalName});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<ShipBloc>().add(ShipLoadEvent(name: internalName)),
      child: Text(displayName),
    );
  }
}
