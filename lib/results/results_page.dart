import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/input/widgets/accent_bottom_button.dart';
import 'package:flutter_bmi_calculator/input/widgets/reusable_card.dart';
import 'package:flutter_bmi_calculator/utils/constants/colors.dart';
import 'package:flutter_bmi_calculator/utils/constants/styles.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('BMI CALCULATOR')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kInputPageActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '18.3',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'You have a higher than normal body weight. Try to exercise more',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: AccentBottomButton(
              title: 'RE-CALCULATE',
              onTap: () => Navigator.of(context).pop(),
            ))
          ],
        ));
  }
}
