import 'package:assessment/domain/weather/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeather();
}
