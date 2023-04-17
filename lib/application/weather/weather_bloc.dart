import 'package:assessment/application/weather/weather_event.dart';
import 'package:assessment/application/weather/weather_state.dart';
import 'package:assessment/domain/weather/weather_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository repository;

  WeatherBloc({required this.repository}) : super(WeatherLoadingState()) {
    on<WeatherLoadEvent>((event, emit) async {
      emit(WeatherLoadingState());
      try {
        final weather = await repository.getWeather();
        emit(WeatherLoadedState(weather: weather));
      } catch (e) {
        emit(WeatherErrorState(error: e));
        rethrow;
      }
    });
  }
}
