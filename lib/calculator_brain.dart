import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String Weightcheck() {
    double h = height / 100;
    double lowerWeight = 18.5 * pow(h, 2);
    String LWeight = lowerWeight.toStringAsFixed(2);
    double upperWeight = 24.9 * (h * h);
    String UWeight = upperWeight.toStringAsFixed(2);
    return 'Ideal Weight: $LWeight kgs - $UWeight kgs';
  }

  String getResult() {
    if (_bmi > 40.0) {
      return 'Morbidly Obese';
    } else if (_bmi >= 35.0 && _bmi <= 39.9) {
      return 'Severely Obese';
    } else if (_bmi >= 30.0 && _bmi <= 34.9) {
      return 'Moderately Obese';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'Overweight';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Normal';
    } else if (_bmi < 16.0) {
      return 'Severely Underweight';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 40.0) {
      return 'You are morbidly obese. It is crucial to consult with a healthcare professional for guidance and support.\n';
    } else if (_bmi >= 35.0 && _bmi <= 39.9) {
      return 'You are severely obese. Consider seeking medical advice for a personalized plan.';
    } else if (_bmi >= 30.0 && _bmi <= 34.9) {
      return 'You are moderately obese. It\'s advisable to consult with a healthcare professional for weight management strategies.';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'You are overweight. Consider incorporating healthier lifestyle choices, including regular exercise and a balanced diet.';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'You have a normal body weight. Good job! Maintain a healthy lifestyle to support overall well-being.';
    } else if (_bmi < 16.0) {
      return 'You are severely underweight. Consult with a healthcare professional for guidance on gaining weight in a healthy manner.';
    } else {
      return 'You have an underweight body. Consider focusing on a balanced diet and exercise to reach a healthy weight.';
    }
  }
}
