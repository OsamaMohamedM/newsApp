import 'package:flutter/material.dart';

import 'DescribetionCard.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'Discover',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
        ),
         Text(
          'Read your favourite news articles in just one click',
          style: TextStyle(color: Colors.black45),
        ),
         SizedBox(
          height: 20,
        ),
         DescribetionCard(),
         SizedBox(
          height: 20,
        ),
        Text('Top head line in Egypt' , style: TextStyle(fontSize: 24 , fontWeight: FontWeight.w900 ),),
      ],
    );
  }
}

