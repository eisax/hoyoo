import 'package:get/get.dart';
import 'package:hoyoo/data/repository/survey_repo.dart';

class CalculatorControler extends GetxController implements GetxService {
  SurveyRepo surveyRepo;
  CalculatorControler({
    required this.surveyRepo,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final List<dynamic> _calculations = [];
  List<dynamic> get calculations => _calculations;

  bool _result = false;
  bool get result => _result;

  void addCalculationValues({dynamic value}) {
    _calculations.add("qqqtest");
    update();
  }
}
