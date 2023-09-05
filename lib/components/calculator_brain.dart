import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  final int weight;
  final int height;

  late double _bmi;

  String calculateBIM() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if(_bmi >= 25) {
      return 'Избыточный вес';
    } else if(_bmi >= 18.5) {
      return 'Нормальный вес';
    } else {
      return 'Недостаточный вес';
    }
  }

  String getIntepretation() {
    if(_bmi >= 25) {
      return 'У вас масса тела выше нормы. Старайтесь больше заниматься спортом.';
    } else if(_bmi >= 18.5) {
      return 'У вас нормальный вес тела. Хорошая работа!';
    } else {
      return 'У вас масса тела ниже нормальной. Ты можешь съесть немного больше.';
    }
  }
}