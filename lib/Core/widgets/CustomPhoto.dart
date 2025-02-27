import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:newsapp/Core/widgets/CustomLoadingWidgets.dart';

class CustomPhoto extends StatelessWidget {
  final String? imageUrl;
  const CustomPhoto({this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        imageUrl: imageUrl ?? "",
        width: 100,
        height: 110,
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          width: 100,
          height: 110,
          color: Colors.grey[300], 
          child: const Center(child: CustomLoadingWidget()),
        ),
        errorWidget: (context, url, error) => Image.asset(
          'assets/images/defult.png',
          width: 100,
          height: 110,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
