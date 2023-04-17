import 'package:assessment/data/ship/api_ship_repository.dart';
import 'package:assessment/data/ship/mock_ship_repository.dart';
import 'package:assessment/domain/ship/ship_repository.dart';
import 'package:assessment/presentation/ship_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<ShipRepository>(
      create: (_) => ApiShipRepository(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ShipPage(),
      ),
    );
  }
}
