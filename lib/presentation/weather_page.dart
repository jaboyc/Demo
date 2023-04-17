import 'package:assessment/application/weather/weather_bloc.dart';
import 'package:assessment/application/weather/weather_event.dart';
import 'package:assessment/application/weather/weather_state.dart';
import 'package:assessment/data/weather/mock_weather_repository.dart';
import 'package:assessment/domain/weather/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: BlocProvider<WeatherBloc>(
        create: (_) => WeatherBloc(repository: context.read<WeatherRepository>())..add(WeatherLoadEvent()),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is WeatherLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is WeatherLoadedState) {
              return Center(
                child: Column(
                  children: [
                    const Text('Weather'),
                    Text(
                      state.weather.degrees.toString(),
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
              );
            } else if (state is WeatherErrorState) {
              return Center(
                child: Column(
                  children: [
                    const Text('Weather'),
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
