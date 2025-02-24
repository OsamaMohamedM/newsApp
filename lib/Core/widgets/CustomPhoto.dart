import 'package:flutter/material.dart';

class CustomPhoto extends StatelessWidget {
  const CustomPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/images/main.jpg',
        fit: BoxFit.cover,
        width: 100,
        height: 110,
      ),
    );
  }
}
