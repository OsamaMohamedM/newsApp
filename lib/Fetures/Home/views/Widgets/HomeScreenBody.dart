import 'package:flutter/material.dart';
import 'ListViewItem.dart';
import 'TopSection.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   TopSection(),
                   SizedBox(height: 20),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListViewItem(),
                  Divider()
                ],
              ),
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
