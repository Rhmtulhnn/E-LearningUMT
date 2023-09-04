import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  final RxString digit1 = ''.obs;
  final RxString digit2 = ''.obs;
  final RxString digit3 = ''.obs;
  final RxString digit4 = ''.obs;

  final RxBool isCodeValid = false.obs;
  final List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());
  final List<TextEditingController> textControllers =
      List.generate(4, (index) => TextEditingController(text: ''));

  void checkCode() {
    isCodeValid.value = textControllers.every((element) => element.text.isEmpty);
  }

  String getVerificationCode() {
    return '${digit1.value},${digit2.value},${digit3.value},${digit4.value}';
  }

  void resetCode() {
    digit1.value = '';
    digit2.value = '';
    digit3.value = '';
    digit4.value = '';
    isCodeValid.value = false;
  }

  final count = 0.obs;

  void increment() => count.value++;
}
