import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  //BMI = mass/height(meters)^2

  String calculateBMI() {
    double weightKg = weight / 2.2046;
    double heightCm = height / 0.39370;

    _bmi = weightKg / pow((heightCm / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a really high BMI. Don\'t take it too seriously, but maybe get some exercise?';
    } else if (_bmi > 18.5) {
      return 'Normal. Good for you';
    } else {
      return 'Go eat some food.';
    }
  }
}
