import 'package:dio/dio.dart';

abstract class ApiServices {
  final Dio dio;
  ApiServices(this.dio);
  //https://newsapi.org/v2/top-headlines?country=eg&apiKey=YOUR_API_KEY
  static const String _baseURL =
      "https://newsapi.org/v2/top-headlines?country=";
  static const String _apiKey = "a2be1b1ab15c46a1864cfa02de0846e3";
  Future<Map<String, dynamic>> fetchDatawithCategory(String endPoint);
  String get baseURL => _baseURL;
  String get apiKey => _apiKey;
}
