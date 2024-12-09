import 'package:flutter/material.dart';

class FoodImageWidget extends StatelessWidget {
  final String imgurl;
  const FoodImageWidget({super.key, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 133,
      height: 119,
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(imgurl)),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
