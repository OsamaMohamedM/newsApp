import 'package:flutter/material.dart';
import 'package:newsapp/Core/data/Models/NewsModel/news_app_model/article.dart';

import '../../../../Core/widgets/CustomPhoto.dart';
import 'ReadMoreWithIcon.dart';

class ListViewItem extends StatelessWidget {
  final Article article;
  const ListViewItem({
    
    super.key, required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomPhoto(imageUrl : article.urlToImage),
            const SizedBox(width: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.source!.name ?? 'unkown',
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: 195,
                    child: Text(
                      article.description ?? 'unkown',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const ReadMoreWithIcon(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
