
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Core/cubit/NewsCubitCubit.dart';

class BottomNavigationBarCubit extends Cubit<int> {
  BottomNavigationBarCubit() : super(0);

  void changePage(int index , BuildContext context) {
    if (index == 0) {
      BlocProvider.of<NewsCubit>(context).getData('egypt');
    }
    emit(index);
  }
}
