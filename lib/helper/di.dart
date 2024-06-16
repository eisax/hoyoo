import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:hoyoo/controller/auth_controller.dart';
import 'package:hoyoo/controller/document_controller.dart';
import 'package:hoyoo/data/FourFilesDB.dart';
import 'package:hoyoo/data/api/api_client.dart';
import 'package:hoyoo/data/repository/auth_repo.dart';
import 'package:hoyoo/data/repository/survey_repo.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:hoyoo/controller/theme_controller.dart';
import 'package:hoyoo/data/model/language_model.dart';
import 'package:hoyoo/util/app_constants.dart';

Future<Map<String, Map<String, String>>> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  // logic

  Get.lazyPut(() => sharedPreferences);

  //database
  await Get.putAsync<AppDatabase>(() => AppDatabase.init());
 

  //repository
  Get.lazyPut(() => AuthRepo(sharedPreferences: Get.find()));
  Get.put(ApiClient(authRepo: Get.find()), permanent: true);
  Get.lazyPut(() => SurveyRepo(db: Get.find(),  sharedPreferences: Get.find()));


  // Controller
  Get.lazyPut(() => ThemeController(sharedPreferences: Get.find()));
  Get.lazyPut(() => AuthController(  apiClient: Get.find(), authRepo: Get.find()));
  Get.lazyPut(() => DocumentController(  apiClient: Get.find(), surveyRepo: Get.find()));
 

  Map<String, Map<String, String>> languages = {};
  for (LanguageModel languageModel in AppConstants.languages) {
    String jsonStringValues = await rootBundle
        .loadString('assets/language/${languageModel.languageCode}.json');
    Map<String, dynamic> mappedJson = jsonDecode(jsonStringValues);
    Map<String, String> json = {};
    mappedJson.forEach((key, value) {
      json[key] = value.toString();
    });
    languages['${languageModel.languageCode}_${languageModel.countryCode}'] =
        json;
  }
  return languages;
}
