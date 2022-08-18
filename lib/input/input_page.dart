import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/input/widgets/icon_content.dart';
import 'package:flutter_bmi_calculator/input/widgets/reusable_card.dart';
import 'package:flutter_bmi_calculator/models/gender.dart';
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
  Gender? selectedGender;

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
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.male
                          ? inputPageActiveCardColor
                          : inputPageInactiveCardColor,
                      cardChild: const IconContent(
                        label: iconContentLabelMale,
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.female
                          ? inputPageActiveCardColor
                          : inputPageInactiveCardColor,
                      cardChild: const IconContent(
                        label: iconContentLabelFemale,
                        icon: FontAwesomeIcons.venus,
                      ),
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
