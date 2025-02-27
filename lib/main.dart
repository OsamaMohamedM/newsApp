import 'package:flutter/material.dart';
import 'package:newsapp/Core/AppRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: Approutes.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
