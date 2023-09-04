import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:siakadumt/app/routes/app_pages.dart';
import 'package:siakadumt/app/shared/theme.dart';
import 'package:siakadumt/app/widgets/custom_form.dart';

import '../../../../../widgets/custom_button.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 36,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 88.8,
                ),
                child: SvgPicture.asset(
                  'assets/svg/pict-login.svg',
                  width: 208.64,
                  height: 165.58,
                ),
              ),
              const SizedBox(
                height: 46.0,
              ),
              Text(
                'Hi Sobat',
                style: bold.copyWith(
                  fontSize: 22,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                height: 8.4,
              ),
              Text(
                'Silahkan masukan email dan kata\nsandi yang sudah ada.',
                style: regular.copyWith(
                  fontSize: 14.4,
                  color: secondColor,
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomText(
                      titleForm: 'Alamat Email',
                      controller: controller.emailController,
                      inputType: TextInputType.emailAddress,
                      hintText: 'example@hotmail.com',
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Obx(
                      () => CustomTextForm(
                        titleTextForm: 'Kata Sandi',
                        controller: controller.passwordController,
                        isActive: tertiaryColor,
                        inActive: primaryColor,
                        isPasswordVisibility:
                            controller.isPasswordVisibility.value,
                        togglePasswordVisibility:
                            controller.tooglePasswordVisibility,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () => Get.offNamed(Routes.RESETPASSWORD),
                        child: Text(
                          'Lupa Kata Sandi?',
                          style: medium.copyWith(
                            fontSize: 13.8,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      style: styleIsActive,
                      onPressed: () => Get.offNamed(Routes.HOME),
                      child: Center(
                        child: Text(
                          'Masuk',
                          style: bold.copyWith(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6.8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Belum punya akun?',
                          textAlign: TextAlign.right,
                          style: regular.copyWith(
                            fontSize: 13.4,
                            color: tertiaryColor,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Get.offNamed(Routes.REGISTER),
                          child: Text(
                            'Daftar sekarang',
                            textAlign: TextAlign.left,
                            style: semiBold.copyWith(
                              fontSize: 13.4,
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
