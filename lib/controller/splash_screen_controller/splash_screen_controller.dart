import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lemons_bakery_app/view/usertype_screen/usertype_screen.dart';

class SplashScreenStateNotifier extends StateNotifier<void> {
  SplashScreenStateNotifier() : super([]);

  init(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UsertypeScreen(),
            ));
      },
    );
  }
}

final splashscreenstateProvider =
    StateNotifierProvider((ref) => SplashScreenStateNotifier());
