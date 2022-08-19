import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/utils/constants/colors.dart';
import 'package:flutter_bmi_calculator/utils/constants/dimensions.dart';
import 'package:flutter_bmi_calculator/utils/constants/styles.dart';

class AccentBottomButton extends StatelessWidget {
  const AccentBottomButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(
          key: key,
        );

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: kAccentColor,
        margin: const EdgeInsets.only(top: kInputPageBottomContainerMarginTop),
        width: double.infinity,
        height: kInputPageBottomContainerHeight,
        child: Text(title, style: kLargeButtonTextStyle),
      ),
    );
  }
}
