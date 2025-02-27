import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:newsapp/Core/Services/networkServices/ApiServices.dart';
import 'package:newsapp/Core/Services/networkServices/ApiserviceswithDioImp.dart';
import 'package:newsapp/Core/data/repositories/NewsrepoImp.dart';

import '../../Fetures/Categories/viewModel/cubit/bottom_navigation_bar_cubit.dart';
import '../data/repositories/NewsRepo.dart';

GetIt getIt = GetIt.instance;
void createObjects() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiServices>(ApiserviceswithDioImp(getIt.get<Dio>()));
  getIt.registerSingleton<Newsrepo>(NewsrepoImp(getIt.get<ApiServices>()));
  getIt.registerSingleton<BottomNavigationBarCubit>(BottomNavigationBarCubit());
}
