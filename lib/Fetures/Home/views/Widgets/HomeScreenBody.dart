import 'package:flutter/material.dart';
import 'ListViewItem.dart';
import 'TopSection.dart';

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
            const TopSection(),
            const SizedBox(height: 20),
            const ListViewItem()
          ],
        ),
      ),
    );
  }
}


