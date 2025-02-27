import 'package:bloc/bloc.dart';

class BottomNavigationBarCubit extends Cubit<int> {
  BottomNavigationBarCubit() : super(0); 

  void changePage(int index) {
    emit(index);
  }
}
