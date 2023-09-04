import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LatestpasswordController extends GetxController {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  final isPasswordVisibility = false.obs;
  final isConfirmPasswordVisibility = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisibility.toggle();
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisibility.toggle();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
