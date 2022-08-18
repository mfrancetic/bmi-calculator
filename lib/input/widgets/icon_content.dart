import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/utils/constants/colors.dart';
import 'package:flutter_bmi_calculator/utils/constants/dimensions.dart';

const labelTextStyle = TextStyle(
  fontSize: iconContentLabelTextStyleFontSize,
  color: iconContentLabelTextStyleColor,
);

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconContentIconSize,
        ),
        const SizedBox(
          height: iconContentDividerHeight,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
