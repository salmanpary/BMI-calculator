import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/results_page.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap,@required this.buttontitle});
  final Function onTap;
  final String buttontitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttontitle,
            style: klargebuttonstyle,
          ),
        ),
        color: kBottomcontainercolor,
        margin:EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomcontainerheight,

      ),
    );
  }
}