import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../Core/widgets/DescripitonWidgets.dart';
import 'DescribetionCard.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Discover',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
            ),
            const Text(
              'Read your favourite news articles in just one click',
              style: TextStyle(color: Colors.black45),
            ),
            const SizedBox(
              height: 20,
            ),
            const DescribetionCard(),
            const SizedBox(
              height: 20,
            ),
            Text('Top head line in Egypt' , style: TextStyle(fontSize: 24 , fontWeight: FontWeight.w900 ),),
          ],
        ),
      ),
    );
  }
}

