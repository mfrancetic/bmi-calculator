import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/input/widgets/icon_content.dart';
import 'package:flutter_bmi_calculator/input/widgets/reusable_card.dart';
import 'package:flutter_bmi_calculator/utils/constants/colors.dart';
import 'package:flutter_bmi_calculator/utils/constants/dimensions.dart';
import 'package:flutter_bmi_calculator/utils/constants/strings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                      child: ReusableCard(
                    color: inputPageActiveCardColor,
                    cardChild: IconContent(
                      label: iconContentLabelMale,
                      icon: FontAwesomeIcons.mars,
                    ),
                  )),
                  Expanded(
                      child: ReusableCard(
                    color: inputPageActiveCardColor,
                    cardChild: IconContent(
                      label: iconContentLabelFemale,
                      icon: FontAwesomeIcons.venus,
                    ),
                  )),
                ],
              ),
            ),
            const Expanded(
                child: ReusableCard(color: inputPageActiveCardColor)),
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                      child: ReusableCard(color: inputPageActiveCardColor)),
                  Expanded(
                      child: ReusableCard(color: inputPageActiveCardColor)),
                ],
              ),
            ),
            Container(
              color: inputPageBottomContainerColor,
              margin:
                  const EdgeInsets.only(top: inputPageBottomContainerMarginTop),
              width: double.infinity,
              height: inputPageBottomContainerHeight,
            )
          ],
        ));
  }
}
