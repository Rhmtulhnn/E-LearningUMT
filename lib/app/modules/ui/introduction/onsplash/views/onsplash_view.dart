import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../routes/app_pages.dart';
import '../controllers/onsplash_controller.dart';

class OnsplashView extends GetView<OnsplashController> {
  const OnsplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), (() {
      Get.offAllNamed(Routes.LOGIN);
    }));

    return Scaffold(
      body: Container(
        height: Get.size.height,
        width: Get.size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/logo-app.png',
                ),
                scale: 3.4,
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
