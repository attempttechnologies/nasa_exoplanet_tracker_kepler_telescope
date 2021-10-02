import 'package:flutter/material.dart';
import 'package:nasa_exoplanet_tracker/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: _themeData(),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: App(),
      ),
    );
  }

  ThemeData _themeData() => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      );
}
