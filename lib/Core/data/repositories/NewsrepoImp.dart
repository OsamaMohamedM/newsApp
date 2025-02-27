import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:newsapp/Core/data/Models/NewsModel/news_app_model/article.dart';
import 'package:newsapp/Core/data/Models/NewsModel/news_app_model/news_app_model.dart';
import 'package:newsapp/Core/data/repositories/NewsRepo.dart';
import 'package:newsapp/Core/errors/Faliure.dart';
import 'package:newsapp/Core/errors/ServerFaliure.dart';

import '../../errors/FaliureException.dart';

class NewsrepoImp extends Newsrepo {
  NewsrepoImp(super.apiServices);

  @override
  Future<Either<Faliure, List<Article>>> fetchNews(String endPoint) async {
    try {
      var response = apiServices.fetchData(endPoint);
      NewsAppModel newsAppModel = NewsAppModel(
          status: response['status'],
          articles: response['articles'],
          totalResults: response['totalResults']);

      return right(newsAppModel.articles ?? []);
    } on DioException catch (e) {
      return left(ServerFaliure.DioException(e));
    } catch (e) {
      return left(FaliureException('Something went wrong. Please try again.!'));
    }
  }
}
