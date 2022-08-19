import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/input/widgets/icon_content.dart';
import 'package:flutter_bmi_calculator/input/widgets/increase_decrease_value_card.dart';
import 'package:flutter_bmi_calculator/input/widgets/reusable_card.dart';
import 'package:flutter_bmi_calculator/models/gender.dart';
import 'package:flutter_bmi_calculator/utils/constants/colors.dart';
import 'package:flutter_bmi_calculator/utils/constants/dimensions.dart';
import 'package:flutter_bmi_calculator/utils/constants/strings.dart';
import 'package:flutter_bmi_calculator/utils/constants/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: selectedGender == Gender.male
                          ? kInputPageActiveCardColor
                          : kInputPageInactiveCardColor,
                      cardChild: const IconContent(
                        label: kIconContentLabelMale,
                        icon: FontAwesomeIcons.mars,
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? kInputPageActiveCardColor
                        : kInputPageInactiveCardColor,
                    cardChild: const IconContent(
                      label: kIconContentLabelFemale,
                      icon: FontAwesomeIcons.venus,
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  )),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              color: kInputPageActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumberTextStyle),
                      const Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: kLightGrey,
                        thumbColor: kAccentColor,
                        overlayColor: kAccentColorOpacity,
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      min: 120.0,
                      max: 230.0,
                      value: height.toDouble(),
                      onChanged: (newHeight) {
                        setState(() {
                          height = newHeight.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kInputPageActiveCardColor,
                      cardChild: IncreaseDecreaseValueCard(
                        title: 'WEIGHT',
                        value: weight,
                        onIncrease: () {
                          setState(() {
                            weight++;
                          });
                        },
                        onDecrease: () {
                          if (weight > 0) {
                            setState(() {
                              weight--;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(
                    color: kInputPageActiveCardColor,
                    cardChild: IncreaseDecreaseValueCard(
                      title: 'AGE',
                      value: age,
                      onIncrease: () {
                        setState(() {
                          age++;
                        });
                      },
                      onDecrease: () {
                        if (height > 0) {
                          setState(() {
                            age--;
                          });
                        }
                      },
                    ),
                  )),
                ],
              ),
            ),
            Container(
              color: kAccentColor,
              margin: const EdgeInsets.only(
                  top: kInputPageBottomContainerMarginTop),
              width: double.infinity,
              height: kInputPageBottomContainerHeight,
            )
          ],
        ));
  }
}
