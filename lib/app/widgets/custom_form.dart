import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siakadumt/app/shared/theme.dart';

class CustomText extends StatelessWidget {
  final String titleForm;
  final TextEditingController controller;
  final TextInputType inputType;
  final String hintText;

  const CustomText({
    Key? key,
    required this.titleForm,
    required this.controller,
    required this.inputType,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleForm,
          style: medium.copyWith(
            fontSize: 13.4,
            color: primaryColor,
          ),
        ),
        const SizedBox(
          height: 6.8,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          height: Get.height * 0.06,
          decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            controller: controller,
            autocorrect: true,
            textAlign: TextAlign.start,
            keyboardType: inputType,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: regular.copyWith(
                fontSize: 12.0,
                color: sixthColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTextForm extends StatelessWidget {
  final String titleTextForm;
  final TextEditingController controller;
  final Color isActive;
  final Color inActive;
  final bool isPasswordVisibility;
  final VoidCallback togglePasswordVisibility;

  const CustomTextForm({
    Key? key,
    required this.titleTextForm,
    required this.controller,
    required this.isActive,
    required this.inActive,
    required this.isPasswordVisibility,
    required this.togglePasswordVisibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleTextForm,
          style: medium.copyWith(
            fontSize: 13.4,
            color: primaryColor,
          ),
        ),
        const SizedBox(
          height: 6.8,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          height: Get.height * 0.06,
          decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
            controller: controller,
            obscureText: !isPasswordVisibility,
            decoration: InputDecoration(
              hintText: 'min 8 character',
              hintStyle: regular.copyWith(
                fontSize: 12.0,
                color: sixthColor,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              suffixIcon: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: IconButton(
                  splashRadius: 26.0,
                  iconSize: 25.6,
                  icon: Icon(
                    isPasswordVisibility ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    togglePasswordVisibility();
                  },
                  color: isPasswordVisibility ? inActive : isActive,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
