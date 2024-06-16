import 'package:get/get.dart';
import 'package:hoyoo/data/repository/survey_repo.dart';

class CalculatorControler extends GetxController implements GetxService {
  SurveyRepo surveyRepo;
  CalculatorControler({
    required this.surveyRepo,
  });

  final bool _isLoading = false;
  bool get isLoading => _isLoading;

  final List<dynamic> _calculations = [];
  List<dynamic> get calculations => _calculations;

  double? _result;
  double? get result => _result;

  void addCalculationValues({dynamic value}) {
  
    _calculations.add(value);
    update();
  }

  void deleteCalculationValues() {
    _calculations.removeLast();
    update();
  }

  void clearCalculationValues() {
    _calculations.clear();
    _result = null;
    update();
  }

  void evaluateExpression() {
    List<dynamic> concatenatedList = concatenateNumbers(_calculations);
    _result = evaluateOperations(concatenatedList);
    update();
  }

  List<dynamic> concatenateNumbers(List<dynamic> expression) {
    List<dynamic> result = [];
    String currentNumber = '';

    for (var item in expression) {
      if (item is double || item is int) {
        currentNumber += item.toString();
      } else {
        if (currentNumber.isNotEmpty) {
          result.add(double.parse(currentNumber));
          currentNumber = '';
        }
        result.add(item);
      }
    }

    if (currentNumber.isNotEmpty) {
      result.add(double.parse(currentNumber));
    }

    return result;
  }

 double evaluateOperations(List<dynamic> expression) {
  List<dynamic> intermediate = [];

  for (int i = 0; i < expression.length; i++) {
    if (expression[i] == '*' || expression[i] == '/') {
      if (intermediate.isEmpty || intermediate.last is! num) {
        throw ArgumentError('Invalid expression format');
      }
      num number1 = intermediate.removeLast();
      String operator = expression[i];
      if (i + 1 >= expression.length || expression[i + 1] is! num) {
        throw ArgumentError('Invalid expression format');
      }
      num number2 = expression[i + 1];
      double result = applyOperation(number1.toDouble(), operator, number2.toDouble());
      intermediate.add(result);
      i++;
    } else if (expression[i] is num) {
      intermediate.add(expression[i]); 
    } else if (isOperator(expression[i])) {
      intermediate.add(expression[i]);
    } else {
      throw ArgumentError('Unexpected expression element: ${expression[i]}');
    }
  }

  if (intermediate.isEmpty || intermediate.first is! num) {
    throw ArgumentError('Invalid expression format');
  }
  double finalResult = intermediate[0].toDouble();
  for (int i = 1; i < intermediate.length; i += 2) {
    if (i + 1 >= intermediate.length || intermediate[i + 1] is! num) {
      throw ArgumentError('Invalid expression format');
    }
    String operator = intermediate[i];
    num number = intermediate[i + 1];
    finalResult = applyOperation(finalResult, operator, number.toDouble());
  }

  return finalResult;
}

bool isOperator(dynamic element) {
  return element == '+' || element == '-' || element == '*' || element == '/';
}


double applyOperation(double num1, String operator, double num2) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      return num1 / num2;
    default:
      throw ArgumentError('Unsupported operator: $operator');
  }
}

}
