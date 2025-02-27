import 'package:flutter/material.dart';

class CustomPhoto extends StatelessWidget {
  final String? imageUrl;
  const CustomPhoto({this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        imageUrl ?? "", 
        width: 100,
        height: 110,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(
            'assets/images/defult.png',
            width: 100,
            height: 110,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
