import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../utils/Constants.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.discreteCircle(
        color: MyColors.myRed,
        secondRingColor: MyColors.myPurple,
        thirdRingColor: MyColors.myDeepPurpleAccent,
        size: 50,
      ),
    );
  }
}

