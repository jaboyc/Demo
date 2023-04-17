import 'package:assessment/domain/weather/weather.dart';

abstract class WeatherState {}

class WeatherLoadingState implements WeatherState {}

class WeatherLoadedState implements WeatherState {
  final Weather weather;

  const WeatherLoadedState({required this.weather});
}

class WeatherErrorState implements WeatherState {
  final Object error;

  const WeatherErrorState({required this.error});
}
