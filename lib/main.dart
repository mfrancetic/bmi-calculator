import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/input/input_page.dart';
import 'package:flutter_bmi_calculator/results/results_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InputPage(),
        '/results': (context) => const ResultsPage()
      },
    );
  }
}
