import 'package:flutter/material.dart';

import '../../../../Core/widgets/CustomPhoto.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.image,
    required this.category,
  });

  final String image;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPhoto(
          width: 180,
          height: 180,
          imageUrl: image,
        ),
        Positioned(
            bottom: 15,
            left: 10,
            child: Text(
              category,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ))
      ],
    );
  }
}
