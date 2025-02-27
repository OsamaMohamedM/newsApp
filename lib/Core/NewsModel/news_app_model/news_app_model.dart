import 'dart:convert';

import 'article.dart';

class NewsAppModel {
  String? status;
  int? totalResults;
  List<Article>? articles;

  NewsAppModel({this.status, this.totalResults, this.articles});

  factory NewsAppModel.fromMap(Map<String, dynamic> data) => NewsAppModel(
        status: data['status'] as String?,
        totalResults: data['totalResults'] as int?,
        articles: (data['articles'] as List<dynamic>?)
            ?.map((e) => Article.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'status': status,
        'totalResults': totalResults,
        'articles': articles?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NewsAppModel].
  factory NewsAppModel.fromJson(String data) {
    return NewsAppModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [NewsAppModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
