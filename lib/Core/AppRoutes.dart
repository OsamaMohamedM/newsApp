import 'package:go_router/go_router.dart';

import '../Fetures/Home/views/HomeScreen.dart';
import '../Fetures/Splash/views/SplashScreen.dart';

abstract class Approutes {
  static const String homePage = '/home';
  static const String initialPage = '/';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(path: homePage , builder: (context , state)=> const HomeScreen()),
    GoRoute(path: initialPage , builder: (context , state)=>const SplashScreen()),
    ]);
}
