import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Categories/viewModel/cubit/bottom_navigation_bar_cubit.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBarCubit, int>(
      builder: (context, selectedIndex) {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,
          iconSize: 20,
          selectedItemColor: const Color(0XFF3F0E70),
          selectedFontSize: 0,
          onTap: (index) => context.read<BottomNavigationBarCubit>().changePage(index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          ],
        );
      },
    );
  }
}
