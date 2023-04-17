import 'package:assessment/application/ship/ship_bloc.dart';
import 'package:assessment/application/ship/ship_event.dart';
import 'package:assessment/application/ship/ship_state.dart';
import 'package:assessment/domain/ship/ship_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShipPage extends StatelessWidget {
  const ShipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ship'),
      ),
      body: BlocProvider<ShipBloc>(
        create: (_) => ShipBloc(repository: context.read<ShipRepository>())..add(ShipLoadEvent()),
        child: BlocBuilder<ShipBloc, ShipState>(
          builder: (context, state) {
            if (state is ShipLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is ShipLoadedState) {
              return Center(
                child: Column(
                  children: [
                    const Text('Ship'),
                    Text(
                      state.ship.toString(),
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
              );
            } else if (state is ShipErrorState) {
              return Center(
                child: Column(
                  children: [
                    const Text('Ship'),
                    Text(
                      state.error.toString(),
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(
                            color: Colors.red,
                          ),
                    ),
                  ],
                ),
              );
            }

            throw UnimplementedError();
          },
        ),
      ),
    );
  }
}
