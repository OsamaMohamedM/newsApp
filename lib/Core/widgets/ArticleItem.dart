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
        (context, index) => const Column(
          mainAxisSize: MainAxisSize.min,
          children: [ListViewItem(), Divider()],
        ),
        childCount: articles.length,
      ),
    );
  }
}
