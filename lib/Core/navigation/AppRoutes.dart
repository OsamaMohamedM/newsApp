import 'package:go_router/go_router.dart';
import 'package:newsapp/Core/cubit/NewsCubitCubit.dart';
import 'package:newsapp/Fetures/Categories/views/CategoriyDeatails.dart';

import '../../Fetures/Categories/views/Categories.dart';
import '../../Fetures/Home/views/HomeScreen.dart';
import '../../Fetures/Splash/views/SplashScreen.dart';

abstract class Approutes {
  static const String homePage = '/home';
  static const String initialPage = '/';
  static const String categories = '/categories';
  static const String categoriyDeatails = '/CategoriyDeatails';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(path: homePage, builder: (context, state) => const HomeScreen()),
    GoRoute(
        path: initialPage, builder: (context, state) => const SplashScreen()),
    GoRoute(
        path: categories, builder: (context, state) => const Categories()),
    GoRoute(
        path: categoriyDeatails, builder: (context, state) => CategoriyDeatails(category : (state.extra as String)),
        ),
  ]);
}
