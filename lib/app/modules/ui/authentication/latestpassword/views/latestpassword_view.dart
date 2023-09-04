import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:siakadumt/app/widgets/custom_form.dart';

import '../../../../../routes/app_pages.dart';
import '../../../../../shared/theme.dart';
import '../../../../../widgets/custom_button.dart';
import '../controllers/latestpassword_controller.dart';

class LatestpasswordView extends GetView<LatestpasswordController> {
  const LatestpasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 36.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 80.0,
              ),
              width: 46.0,
              height: 46.0,
              child: ClipOval(
                child: Material(
                  color: thirdColor,
                  child: InkWell(
                    onTap: () => Get.offNamed(Routes.RESETPASSWORD),
                    child: const SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 22.0,
                        color: secondColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 60.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SvgPicture.asset(
                    'assets/svg/pict-password.svg',
                    width: 200.42,
                    height: 180.2,
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14.0,
                    ),
                    child: Text(
                      'Pastikan password yang Anda '
                      'pilih\nkuat dan sulit ditebak.',
                      style: regular.copyWith(
                        fontSize: 14.0,
                        color: secondColor,
                        height: 2.0,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14.0,
                      horizontal: 10.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Obx(
                          () => CustomTextForm(
                            titleTextForm: 'Kata Sandi',
                            controller: controller.passwordController,
                            isActive: tertiaryColor,
                            inActive: primaryColor,
                            isPasswordVisibility:
                                controller.isPasswordVisibility.value,
                            togglePasswordVisibility:
                                controller.togglePasswordVisibility,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 18.0,
                          ),
                          child: Obx(
                            () => CustomTextForm(
                              titleTextForm: 'Konfirmasi Kata Sandi',
                              controller: controller.confirmPasswordController,
                              isActive: tertiaryColor,
                              inActive: primaryColor,
                              isPasswordVisibility:
                                  controller.isConfirmPasswordVisibility.value,
                              togglePasswordVisibility:
                                  controller.toggleConfirmPasswordVisibility,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32.0,
                        ),
                        ElevatedButton(
                          style: styleIsActive,
                          onPressed: () {
                            // controller.showDialog();
                          },
                          child: Center(
                            child: Text(
                              'Konfirmasi',
                              style: bold.copyWith(
                                fontSize: 16,
                                color: Colors.white,
                              ),
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
    );
  }
}
