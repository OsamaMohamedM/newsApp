import 'package:flutter/material.dart';
import 'package:newsapp/Fetures/Home/views/Widgets/HomeScreenBody.dart';

import 'Widgets/CustomBottomNavigationBar.dart';

//01557748279
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
  int selectedIndex  = 0;
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(selectedIndex: selectedIndex),
      body: const HomeScreenBody(),
    );
  }
}

