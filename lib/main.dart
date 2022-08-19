import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/input/input_page.dart';
import 'package:flutter_bmi_calculator/results/results_page.dart';
import 'package:flutter_bmi_calculator/utils/constants/navigation_arguments.dart';

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
        '/results': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as ResultsPageArguments;
          return ResultsPage(
            bmiResult: args.bmiResult,
            resultText: args.resultText,
            interpretation: args.interpretation,
          );
        }
      },
    );
  }
}
