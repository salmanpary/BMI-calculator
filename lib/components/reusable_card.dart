import 'package:flutter/material.dart';
class Reusablecard extends StatelessWidget {

  final Color colour;
  final Widget cardchild;
  final Function onPress;
  Reusablecard({@required this.colour,this.cardchild,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(

        child:cardchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),


      ),
    );
  }
}