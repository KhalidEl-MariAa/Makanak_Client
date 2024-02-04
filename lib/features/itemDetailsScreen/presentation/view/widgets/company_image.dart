import 'package:cached_network_image/cached_network_image.dart';
import 'package:client_pro/core/reusable.dart';
import 'package:flutter/material.dart';

class CompanyDetailsImagesView extends StatelessWidget {
  const CompanyDetailsImagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
                  height: MediaQuery.sizeOf(context).height*0.25,
                  width: MediaQuery.sizeOf(context).width*0.8,
                  fit: BoxFit.fitHeight,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  placeholder: (context, url) => CircularProgressIndicator(color: Reusable.reuseColor,),
                  imageUrl: 'https://www.pharmaid.gr/wp-content/uploads/2013/08/body-cream-aloe-1056x2048.jpg');
  }
}