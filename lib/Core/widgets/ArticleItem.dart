import 'package:flutter/material.dart';

import '../../Fetures/Home/views/Widgets/ListViewItem.dart';
import '../data/Models/NewsModel/news_app_model/article.dart';

class ArticleItems extends StatelessWidget {
  final List<Article> articles;
  const ArticleItems({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) =>  Column(
          mainAxisSize: MainAxisSize.min,
          children: [ListViewItem(article : articles[index]),const Divider()],
        ),
        childCount: articles.length,
      ),
    );
  }
}
