import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siakadumt/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  final TextEditingController npmController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  final isPasswordVisibility = false.obs;
  final isConfirmPasswordVisibility = false.obs;
  final isChecked = false.obs;

  void tooglePasswordVisibility() {
    isPasswordVisibility.toggle();
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisibility.toggle();
  }

  void onCheckboxValueChanged(bool? value) {
    isChecked.value = value!;
    if (isChecked.isTrue) {
      Get.offNamed(Routes.TERMCONDITION);
    }
  }

  RxBool isAgree() {
    var args = Get.arguments;
    return (isChecked.value == true && args?['isAgree'] == true).obs;
  }

  final count = 0.obs;
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
