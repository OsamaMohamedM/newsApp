import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:newsapp/Core/widgets/CustomLoadingWidgets.dart';

class CustomPhoto extends StatelessWidget {
  final String? imageUrl;
  final double width, height;
  final String defulte = "assets/images/defult.png";
  const CustomPhoto(
      {this.imageUrl, super.key, this.width = 130, this.height = 150});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        imageUrl: imageUrl ?? "",
        width: width,
        height: height,
        fit: BoxFit.fill,
        placeholder: (context, url) => Container(
          width: width,
          height: width,
          color: Colors.grey[300],
          child: const Center(child: CustomLoadingWidget()),
        ),
        errorWidget: (context, url, error) => Image.asset(
          ((width == 180 && imageUrl != null) ? imageUrl! : defulte),
          width: width,
          height: height,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
