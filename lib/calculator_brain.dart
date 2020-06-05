import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    print('calculated bmi from inside calculator = $_bmi');
    return _bmi.toStringAsFixed(1);
  }

  String getResult () {
    if (_bmi >= 25) {
      print('Overweight');
      return 'Overweight';
    } else if (_bmi > 18.5) {
      print('Normal');
      return 'Normal';
    } else {
      print('Underweight');
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Overweight qsfd qqsd qsd qsd q qsfd qs qsd ';
    } else if (_bmi > 18.5) {
      return 'Normalqsd qsd qsd qze qdsf sdqg dfg qsdg';
    } else {
      return 'Underweight sdf qsdf qsdf qsdf qs';
    }
  }
}