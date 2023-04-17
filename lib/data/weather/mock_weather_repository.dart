import 'package:assessment/domain/weather/weather.dart';
import 'package:assessment/domain/weather/weather_repository.dart';

class MockWeatherRepository implements WeatherRepository {
  @override
  Future<Weather> getWeather() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Weather(degrees: 40);
  }
}
