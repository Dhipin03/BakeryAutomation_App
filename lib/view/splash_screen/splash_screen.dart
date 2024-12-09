import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lemons_bakery_app/controller/splash_screen_controller/splash_screen_controller.dart';

import 'package:lemons_bakery_app/utils/constatnts/image_constants.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(splashscreenstateProvider.notifier).init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImageConstants.spalshscreenimg))),
      ),
    );
  }
}
