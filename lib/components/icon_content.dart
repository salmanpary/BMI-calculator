import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class Iconcontent extends StatelessWidget {
  Iconcontent({this.icon,this.label});
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Icon(
          icon,
          size:80.0,

        ),
        SizedBox(
          height: 15,
        ),
        Text(label,
          style:kLabeltextstyle
        ),
      ],
    );
  }
}