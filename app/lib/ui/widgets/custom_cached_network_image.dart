import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;

  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.width = 150,
    this.height = 150,
  });

  @override
  Widget build(BuildContext context) => ClipOval(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: width,
          height: height,
          fit: BoxFit.cover,
          placeholder: (BuildContext context, String url) =>
              const CircularProgressIndicator(),
          errorWidget: (BuildContext context, String url, Object error) =>
              const Icon(Icons.error),
        ),
      );
}
