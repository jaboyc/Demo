import 'package:assessment/application/ship/ship_bloc.dart';
import 'package:assessment/application/ship/ship_event.dart';
import 'package:assessment/application/ship/ship_state.dart';
import 'package:assessment/domain/ship/ship_repository.dart';
import 'package:assessment/presentation/ship_info_card.dart';
import 'package:assessment/presentation/ship_selection_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShipPage extends StatelessWidget {
  const ShipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Norwegian Cruise Lines'),
      ),
      body: BlocProvider<ShipBloc>(
        create: (_) => ShipBloc(repository: context.read<ShipRepository>()),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Welcome to the Ship directory! Click on one of the buttons below to learn more about the NCL Ships!',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            _buildShipSelectionBar(),
            _buildShipInfo(),
          ],
        ),
      ),
    );
  }

  Row _buildShipSelectionBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        ShipSelectionButton(displayName: 'Sky', internalName: 'SKY'),
        ShipSelectionButton(displayName: 'Bliss', internalName: 'BLISS'),
        ShipSelectionButton(displayName: 'Escape', internalName: 'ESCAPE'),
      ],
    );
  }

  BlocBuilder<ShipBloc, ShipState> _buildShipInfo() {
    return BlocBuilder<ShipBloc, ShipState>(
      builder: (context, state) {
        if (state is ShipInitialState) {
          return Container();
        } else if (state is ShipLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ShipLoadedState) {
          return ShipInfoCard(ship: state.ship);
        } else if (state is ShipErrorState) {
          return Center(
            child: Column(
              children: [
                const Text('Something happened...'),
                Text(
                  state.error.toString(),
                  style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.red),
                ),
              ],
            ),
          );
        }

        throw UnimplementedError();
      },
    );
  }
}
