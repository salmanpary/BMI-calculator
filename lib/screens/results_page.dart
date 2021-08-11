

import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/services.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class Resultspage extends StatelessWidget {
  Resultspage({ @required this.inter, @required this.bmiresult,  @required this.resulttext});
   final String bmiresult;
   final String resulttext;
   final String inter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("bmi calculator"),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            child:Text('your result',
              style: kTitletext,

            ),
          ),
          ),
          Expanded(flex:5,
          child: Reusablecard(colour:kInactivecardcolor,
            cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget> [
                Text(
                  resulttext.toUpperCase(),
                  style: kResultextstyle,
                ),
                Text(
                  bmiresult,
                  style: kBmitextstyle,
                ),
                Text(
                  inter,
                  style: kBodytextstyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),

          ),
          ),
          BottomButton(onTap:(){
           Navigator.pop(context);

          },
              buttontitle: 'recalculate',
          )
        ],
      ),
    );
  }
}
