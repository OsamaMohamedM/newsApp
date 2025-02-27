import 'package:dartz/dartz.dart';

import 'package:newsapp/Core/data/Models/NewsModel/news_app_model/article.dart';

import '../../Services/networkServices/ApiServices.dart';
import '../../errors/Faliure.dart';

abstract class Newsrepo {
  final ApiServices _apiServices;
  Newsrepo(this._apiServices);

  get apiServices => _apiServices;

  Future<Either<Faliure, List<Article>>> fetchNews(String endPoint);
}
