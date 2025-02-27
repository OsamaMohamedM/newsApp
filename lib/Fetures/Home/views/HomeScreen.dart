import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Fetures/Home/views/Widgets/HomeScreenBody.dart';
import '../../Categories/viewModel/cubit/bottom_navigation_bar_cubit.dart';
import '../../Categories/views/Categories.dart';
import 'Widgets/CustomBottomNavigationBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Widget> screens = const [
    HomeScreenBody(),
    Categories(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: BlocBuilder<BottomNavigationBarCubit, int>(
        builder: (context, selectedIndex) {
          return SafeArea(child: screens[selectedIndex]);
        },
      ),
    );
  }
}
