import 'package:flutter/material.dart';

class HourlyForecast extends StatelessWidget {
  String time;
  IconData icon;
  String temperature;
  HourlyForecast({
    super.key,
    required this.time,
    required this.icon,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(time, style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Icon(icon, size: 30),
              SizedBox(height: 10),
              Text(temperature),
            ],
          ),
        ),
      ),
    );
  }
}
