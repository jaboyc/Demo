import 'package:assessment/data/weather/mock_weather_repository.dart';
import 'package:assessment/domain/weather/weather_repository.dart';
import 'package:assessment/presentation/weather_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<WeatherRepository>(
      create: (_) => MockWeatherRepository(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const WeatherPage(),
      ),
    );
  }
}
