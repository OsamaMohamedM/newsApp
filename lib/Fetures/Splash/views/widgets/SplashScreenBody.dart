import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:newsapp/Core/AppRoutes.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../Core/widgets/DescripitonWidgets.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(Approutes.homePage);
    });
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/main.jpg',
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'World',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
                GradientText(
                  'News',
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.w600),
                  colors: const [
                    Color(0XFFFF2E00),
                    Color(0XFFC714D7),
                    Color(0XFF3F0E70),
                  ],
                )
              ],
            ),
            const DescripitonWidgets(isSplash : true),
            LoadingAnimationWidget.waveDots(
              color: const Color(0XFFC714D7),
              size: 50,
            ),
          ]),
    );
  }
}
