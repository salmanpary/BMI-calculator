import 'dart:math';
class Calculatorbrain{
  Calculatorbrain({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculatebmi(){
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getresults(){
    if(_bmi>= 25){
      return 'overweight';
    }
    else if(_bmi>18.5){
      return 'normal';
    }else{
      return 'underweight';
    }

  }
  String getinter(){
    if(_bmi>= 25){
      return 'Korach chaadi kalikk thadi korayatte';
    }
    else if(_bmi>18.5){
      return 'nee adipoliaada';
    }else{
      return 'korach muttem paalum okk thinn';
    }

  }
}