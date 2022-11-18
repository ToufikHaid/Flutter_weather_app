import 'package:flutter/material.dart';
import 'package:weather_app/HomePage.dart';
import 'package:weather_app/WeatherDetails.dart';
import 'package:weather_app/forecast.dart';

class Swip extends StatelessWidget {
  const Swip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        HomePage(),
        WeatherDetails(),
        Forecast(),
      ],
    ));
  }
}
