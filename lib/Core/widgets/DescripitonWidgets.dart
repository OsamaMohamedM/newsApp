import 'package:flutter/material.dart';

class DescripitonWidgets extends StatelessWidget {
  const DescripitonWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 28.0 ,vertical: 20.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "FlutterNews",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          Text(
            "Introducing Flutter News, the go-to platform for all your news needs! Whether you're into global affairs, tech innovations, sports highlights, entertainment buzz, or financial insights. We bring you the latest updates tailored to your interests. ",
            style: TextStyle(fontSize: 14 ,color: Colors.white),
          )
        ],
      ),
    );
  }
}
