import 'package:get/get.dart';
import 'package:hoyoo/data/FourFilesDB.dart';
import 'package:hoyoo/data/api/api_client.dart';
import 'package:hoyoo/data/model/response/survey.dart';
import 'package:hoyoo/util/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SurveyRepo extends GetxService {
  final SharedPreferences sharedPreferences;
  final AppDatabase db;
  SurveyRepo({required this.db, required this.sharedPreferences});

  Future<Response?> getSurveyList({required ApiClient apiClient}) async {
    return await apiClient.getData(AppConstants.getAllSurveysUrl);
  }

  Future<List<SurveyModel>> getSurveyListOffline() async {
    return await db.surveyModelDao.findAll();
  }

  Future<SurveyModel?> getSurveyOffline(int id) async {
    return await db.surveyModelDao.findById(id);
  }

  Future<int> saveSurveyOffline({required SurveyModel survey}) async {
    return await db.surveyModelDao.insertTransaction(survey);
  }
}
