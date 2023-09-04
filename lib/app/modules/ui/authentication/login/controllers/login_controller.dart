import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:siakadumt/app/shared/theme.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final isPasswordVisibility = false.obs;
  final count = 0.obs;

  void tooglePasswordVisibility() {
    isPasswordVisibility.toggle();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
