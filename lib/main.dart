import 'package:flutter/material.dart';
import 'package:practice/Currency_Converter_App/currency_converter.dart';
import 'package:practice/Weather_App/weather_app.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: WeatherApp(),
    );
  }
}
