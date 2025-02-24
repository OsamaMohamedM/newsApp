import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        iconSize: 20,
        selectedItemColor: const Color(0XFF3F0E70),
        selectedFontSize: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        ]);
  }
}
