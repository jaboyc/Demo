import 'package:assessment/application/ship/ship_event.dart';
import 'package:assessment/application/ship/ship_state.dart';
import 'package:assessment/domain/ship/ship_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShipBloc extends Bloc<ShipEvent, ShipState> {
  final ShipRepository repository;

  ShipBloc({required this.repository}) : super(ShipInitialState()) {
    on<ShipLoadEvent>((event, emit) async {
      emit(ShipLoadingState());
      try {
        final ship = await repository.getShip(event.name);
        emit(ShipLoadedState(ship: ship));
      } catch (e) {
        emit(ShipErrorState(error: e));
        rethrow;
      }
    });
  }
}
