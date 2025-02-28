import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp/Core/navigation/AppRoutes.dart';
import 'package:newsapp/Fetures/Categories/views/widgets/GridViewItem.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  final List<String> categoryList = const [
    "Cricket",
    "Football",
    "Politics",
    "Technology",
    "Music",
    "Gaming",
    "Anime",
  ];
  final List<String> images = const [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Categories',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              Text("Read about various categories as per your interests",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Colors.black54)),
              SizedBox(
                height: 15,
              ),
            ],
          )),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                childCount: images.length,
                (context, index) => GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(Approutes.categoriyDeatails , extra: categoryList[index]);
                      },
                      child: GridViewItem(
                          image: images[index], category: categoryList[index]),
                    )),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 8),
          )
        ],
      ),
    );
  }
}

