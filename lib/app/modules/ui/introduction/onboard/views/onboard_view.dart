import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siakadumt/app/shared/theme.dart';

import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnboardView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'text',
          style: bold.copyWith(
            fontSize: 12,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
