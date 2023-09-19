import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hpos/view_models/controllers/src/splash_screen_controller.dart';
import 'package:hpos/views/view.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashScreenController());
    return AppScaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/fashion_logo.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
