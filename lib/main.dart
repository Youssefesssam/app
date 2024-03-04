import 'package:ch/screens/data.dart';
import 'package:flutter/material.dart';

import 'screens/homeScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        HomeScreen.routName: (_) => HomeScreen(),
        Data.routNama: (_) => Data(),
      },
      initialRoute: HomeScreen.routName,
    );
  }

}

