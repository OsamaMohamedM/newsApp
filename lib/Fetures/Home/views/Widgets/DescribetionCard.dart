import 'package:flutter/material.dart';

import '../../../../Core/widgets/DescripitonWidgets.dart';

class DescribetionCard extends StatelessWidget {
  const DescribetionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
               
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Color(0XFFFF2E00),
              Color(0XFFC714D7),
              Color(0XFF3F0E70),
            ],
          )),
          child: const DescripitonWidgets(),
    );
  }
}

