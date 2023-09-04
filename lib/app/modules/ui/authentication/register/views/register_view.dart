import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:siakadumt/app/routes/app_pages.dart';
import 'package:siakadumt/app/shared/theme.dart';
import 'package:siakadumt/app/widgets/custom_form.dart';

import '../../../../../widgets/custom_button.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 36.0,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 88.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Registrasi Akun',
                  style: bold.copyWith(
                    fontSize: 22.0,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Silahkan lengkapi data tersebut untuk'
                  '\nmenggunakan layanan kami',
                  style: regular.copyWith(
                    fontSize: 13.8,
                    color: secondColor,
                  ),
                ),
                const SizedBox(
                  height: 28.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomText(
                        titleForm: 'NPM Mahasiswa',
                        controller: controller.npmController,
                        inputType: TextInputType.number,
                        hintText: 'min 10 number',
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      CustomText(
                        titleForm: 'Alamat Email',
                        controller: controller.emailController,
                        inputType: TextInputType.emailAddress,
                        hintText: 'example@hotmail.com',
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Obx(() {
                        return CustomTextForm(
                          titleTextForm: 'Kata Sandi',
                          controller: controller.passwordController,
                          isActive: tertiaryColor,
                          inActive: primaryColor,
                          isPasswordVisibility:
                              controller.isPasswordVisibility.value,
                          togglePasswordVisibility:
                              controller.tooglePasswordVisibility,
                        );
                      }),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Obx(() {
                        return CustomTextForm(
                          titleTextForm: 'Konfirmasi Kata Sandi',
                          controller: controller.confirmPasswordController,
                          isActive: tertiaryColor,
                          inActive: primaryColor,
                          isPasswordVisibility:
                              controller.isConfirmPasswordVisibility.value,
                          togglePasswordVisibility:
                              controller.toggleConfirmPasswordVisibility,
                        );
                      }),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                          right: 16.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Obx(
                              () => Checkbox(
                                value: controller.isChecked.value,
                                onChanged: controller.onCheckboxValueChanged,
                              ),
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Saya setuju dengan ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.6,
                                      color: secondColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Syarat dan ketentuan ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.6,
                                      color: primaryColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\ndan ',
                                    style: TextStyle(
                                      height: 1.78,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.6,
                                      color: secondColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Kebijakan privasi',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.6,
                                      color: primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Obx(
                              () => ElevatedButton(
                                style: controller.isAgree().isFalse
                                    ? styleInActive
                                    : styleIsActive,
                                onPressed: () {
                                  if (controller.isAgree().value) {
                                    Get.offNamed(Routes.TERMCONDITION);
                                  } else {
                                    Fluttertoast.showToast(
                                      msg: 'Anda harus menyetujui persyaratan.',
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.CENTER,
                                      backgroundColor: primaryColor,
                                      textColor: Colors.white,
                                      timeInSecForIosWeb: 2,
                                      fontSize: 12,
                                    );
                                  }
                                },
                                child: Center(
                                  child: Text(
                                    'Daftar',
                                    style: bold.copyWith(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Sudah punya akun?',
                              textAlign: TextAlign.right,
                              style: regular.copyWith(
                                fontSize: 13.4,
                                color: tertiaryColor,
                              ),
                            ),
                            TextButton(
                              onPressed: () => Get.offNamed(Routes.LOGIN),
                              child: Text(
                                'Masuk',
                                textAlign: TextAlign.left,
                                style: semiBold.copyWith(
                                  fontSize: 13.4,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
