import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Core/data/repositories/NewsRepo.dart';
import 'package:newsapp/Core/navigation/AppRoutes.dart';
import 'package:newsapp/Fetures/Home/ViewModel/cubit/home_screen_cubit.dart';
import 'Core/Services/SingaltonPattern.dart';

void main() {
  createObjects();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenCubit(getIt.get<Newsrepo>())..getData('us'),
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
