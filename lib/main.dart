import 'package:ch/screens/data.dart';
import 'package:ch/screens/tab1.dart';
import 'package:ch/screens/tab2.dart';
import 'package:ch/screens/tab3.dart';
import 'package:ch/themeProvider/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/homeScreen.dart';

void main() {
  runApp( ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child:  MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider =Provider.of(context);
    return MaterialApp(

      themeMode:themeProvider.currentMode ,
      routes: {
        HomeScreen.routName: (_) => HomeScreen(),
        Data.routNama: (_) => Data(),
        tab1.routeName: (_) => tab1(),
        tab2.routeName: (_) => tab2(),
        tab3.routeName: (_) => tab3(),
      },
      initialRoute: HomeScreen.routName,
    );
  }

}

