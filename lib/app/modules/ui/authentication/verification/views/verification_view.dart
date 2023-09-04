import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:siakadumt/app/widgets/custom_button.dart';

import '../../../../../routes/app_pages.dart';
import '../../../../../shared/theme.dart';
import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  const VerificationView({Key? key}) : super(key: key);
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
                vertical: 44.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24.0,
                    ),
                    child: SvgPicture.asset(
                      'assets/svg/pict-verification.svg',
                      width: 240.0,
                      height: 148.8,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24.0,
                    ),
                    child: Text(
                      'Kode Verfikasi OTP',
                      style: bold.copyWith(
                        fontSize: 22.0,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Kode sudah kami kirimkan melalui'
                                  '\n Email ',
                              style: regular.copyWith(
                                fontSize: 14.8,
                                color: secondColor,
                                height: 1.8,
                              ),
                            ),
                            TextSpan(
                              text: 'rah***@hotmail.com',
                              style: medium.copyWith(
                                fontSize: 14.8,
                                color: primaryColor,
                                height: 1.8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 40.0,
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 14.0,
                      runSpacing: 10.0,
                      children: [
                        for (int i = 0;
                            i < controller.textControllers.length;
                            i++)
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: thirdColor,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                              color: thirdColor, //
                            ),
                            child: TextFormField(
                              controller: controller.textControllers[i],
                              autofocus: true,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  ++i;

                                  switch (i) {
                                    case 0:
                                      controller.digit1.value = value;
                                      break;
                                    case 1:
                                      controller.digit2.value = value;
                                      break;
                                    case 2:
                                      controller.digit3.value = value;
                                      break;
                                    case 3:
                                      controller.digit4.value = value;
                                      break;
                                  }

                                  FocusScope.of(context).nextFocus();

                                  controller.checkCode();
                                  if (controller.isCodeValid.value) {
                                    if (i == 3) {
                                      Get.offAllNamed(Routes.LATESTPASSWORD);
                                    } else {
                                      controller.focusNodes[i + 1]
                                          .requestFocus();
                                    }
                                  }
                                } else {
                                  FocusScope.of(context).previousFocus();
                                }
                              },
                              focusNode: controller.focusNodes[i],
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              style: regular.copyWith(
                                fontSize: 20.0,
                                color: secondColor,
                              ),
                              decoration: const InputDecoration(
                                counterText: '',
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 14.0,
                                  horizontal: 6.0,
                                ),
                              ),
                              onFieldSubmitted: (value) {
                                if (i < 3) {
                                  controller.focusNodes[i].requestFocus();
                                } else {
                                  Get.offAllNamed(Routes.LATESTPASSWORD);
                                }
                              },
                            ),
                          ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Waktu tersisa tinggal ',
                              style: regular.copyWith(
                                fontSize: 14.8,
                                color: secondColor,
                                height: 1.8,
                              ),
                            ),
                            TextSpan(
                              text: ' 24 detik',
                              style: medium.copyWith(
                                fontSize: 14.8,
                                color: primaryColor,
                                height: 1.8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    style: styleIsActive,
                    onPressed: () => Get.offNamed(Routes.LATESTPASSWORD),
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
    );
  }
}
