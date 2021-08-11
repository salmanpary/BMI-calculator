

import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import '../constants.dart';
import 'results_page.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';
enum Gender{
  male,female
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height=180;
  int weight=60;
int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
          Expanded(child: Row(
    children:<Widget> [
    Expanded(child:Reusablecard(
      onPress: (){
        setState(() {
          selectedgender=Gender.male;

        });
      },

      cardchild:Iconcontent(icon:FontAwesomeIcons.mars,label:"male"
        ,)
      ,
      colour: selectedgender==Gender.male?kActivecardcolor:kInactivecardcolor,
    ),
    ),
    Expanded(

      child:Reusablecard(onPress: (){
        setState(() {
          selectedgender=Gender.female;
        });

      },
        cardchild: Iconcontent(icon:FontAwesomeIcons.venus,label: "female",
    ),
      colour: selectedgender==Gender.female?kActivecardcolor:kInactivecardcolor,

    ),
    ),
    ],
    ),
          ),
          Expanded(child:  Reusablecard(colour: kInactivecardcolor,
          cardchild: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children:<Widget> [
              Text("height",
                style: kLabeltextstyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children:<Widget> [
                  Text(
                    height.toString(),
                    style:kNumbertextsyle,
                  ),
                  Text('cm',
                    style: kLabeltextstyle,
                  ),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.white,
                  overlayColor: Color(0x15EB1555),
                  thumbColor:Color(0xFFEB1555) ,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                ),
                child: Slider(value:height.toDouble() ,
                    min:120,
                    max:220.0,

                    inactiveColor: Color(0xff8D8E98),
                    onChanged:(double newvalue){
                  setState(() {
                    height=newvalue.round();
                  });


                    } ,
                ),
              )
            ],
          ),),
          ),
    Expanded(child: Row(
    children:<Widget> [
    Expanded(child: Reusablecard(colour: kInactivecardcolor,
    cardchild:Column(mainAxisAlignment:MainAxisAlignment.center,
      children:<Widget>[
        Text('weight',
        style: kLabeltextstyle,
        ),
        Text(weight.toString(),
          style: kNumbertextsyle,
        ),
        Row(
          mainAxisAlignment:MainAxisAlignment.center ,
          children:<Widget> [
            Roundiconbutton(
              icon:FontAwesomeIcons.minus,
              onPressed: (){
                setState(() {
                  weight--;
                });
              },
            ),

            SizedBox(
              width: 10.0,
            ),
            Roundiconbutton(
              icon:FontAwesomeIcons.plus,
              onPressed: ()
              {
                setState(() {
                  weight++;
                });
              },
            ),

          ],
        ),
      ],
    ) ,
    ),
    ),
    Expanded(child:  Reusablecard(
      colour: kInactivecardcolor,
      cardchild:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Text(
            'age',
            style: kLabeltextstyle,
          ),
          Text(age.toString(),
          style: kNumbertextsyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Roundiconbutton(icon: FontAwesomeIcons.minus,
                  onPressed:() {
                setState(() {
                  age--;
                });
                  }
              ),
              SizedBox(width: 10,
              ),
              Roundiconbutton(icon: FontAwesomeIcons.plus,
                  onPressed: (){
                setState(() {
                  age++;
                  });
              }
              ),
            ],
          ),
        ],
      ) ,
    ),
    ),
    ],
    ),
    ),
          BottomButton(buttontitle: 'calculate',
          onTap: (){
            Calculatorbrain calc=Calculatorbrain(height: height,weight: weight);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Resultspage(
              bmiresult:calc.calculatebmi(),
              resulttext:calc.getresults() ,
              inter: calc.getinter(),
            ),
            ),
            );
          },
          ),
        ],


      ),




    );
  }
}









