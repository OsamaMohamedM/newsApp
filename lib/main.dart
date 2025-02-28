import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Core/data/repositories/NewsRepo.dart';
import 'package:newsapp/Core/navigation/AppRoutes.dart';
import 'package:newsapp/Fetures/Categories/viewModel/cubit/bottom_navigation_bar_cubit.dart';
import 'package:newsapp/Core/cubit/NewsCubitCubit.dart';
import 'Core/Services/SingaltonPattern.dart';

void main() {
  createObjects();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsCubit(getIt.get<Newsrepo>())..getData('egypt'),
        ),
        BlocProvider(
          create: (context) => BottomNavigationBarCubit(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        routerConfig: Approutes.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
