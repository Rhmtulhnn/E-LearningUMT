import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:siakadumt/app/widgets/custom_form.dart';

import '../../../../../routes/app_pages.dart';
import '../../../../../shared/theme.dart';
import '../../../../../widgets/custom_button.dart';
import '../controllers/resetpassword_controller.dart';

class ResetpasswordView extends GetView<ResetpasswordController> {
  const ResetpasswordView({Key? key}) : super(key: key);
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
                    onTap: () => Get.offNamed(Routes.LOGIN),
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
                vertical: 80.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SvgPicture.asset(
                    'assets/svg/pict-password.svg',
                    width: 220.42,
                    height: 200.2,
                  ),
                  const SizedBox(
                    height: 46.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Text(
                      'Reset Kata Sandi',
                      style: bold.copyWith(
                        fontSize: 22.0,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Text(
                    'Masukan e-mail untuk verifikasi\nakun anda',
                    style: regular.copyWith(
                      fontSize: 13.8,
                      color: secondColor,
                    ),
                  ),
                  const SizedBox(
                    height: 26.0,
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
                          height: 40.0,
                        ),
                        ElevatedButton(
                          style: styleIsActive,
                          onPressed: () => Get.offNamed(Routes.VERIFICATION),
                          child: Center(
                            child: Text(
                              'Verifikasi',
                              style: bold.copyWith(
                                fontSize: 16.0,
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
