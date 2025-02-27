import 'package:flutter/material.dart';

class DescripitonWidgets extends StatelessWidget {
  final bool isSplash;
  const DescripitonWidgets({
    required this.isSplash,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "WorldNews",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: isSplash ? Colors.black : Colors.white),
          ),
          Text(
            "Stay informed with the latest news from around the world! From breaking headlines and political updates to science discoveries, sports highlights, and entertainment trends, we bring you real-time coverage on everything that matters.",
            style: TextStyle(
                fontSize: 14, color: isSplash ? Colors.black : Colors.white),
          )
        ],
      ),
    );
  }
}
