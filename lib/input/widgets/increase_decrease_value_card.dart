import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/input/widgets/round_icon_button.dart';
import 'package:flutter_bmi_calculator/utils/constants/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IncreaseDecreaseValueCard extends StatelessWidget {
  const IncreaseDecreaseValueCard(
      {Key? key,
      required this.title,
      required this.value,
      required this.onIncrease,
      required this.onDecrease})
      : super(key: key);

  final String title;
  final int value;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: kLabelTextStyle,
        ),
        Text(value.toString(), style: kNumberTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: RoundIconButton(
                    icon: FontAwesomeIcons.minus, onPressed: onDecrease)),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
                child: RoundIconButton(
                    icon: FontAwesomeIcons.plus, onPressed: onIncrease)),
          ],
        ),
      ],
    );
  }
}
