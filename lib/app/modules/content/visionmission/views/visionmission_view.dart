import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../../../../shared/theme.dart';
import '../controllers/visionmission_controller.dart';

class VisionmissionView extends GetView<VisionmissionController> {
  const VisionmissionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 40.0,
          horizontal: 36.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 40.0,
              ),
              width: 46.0,
              height: 46.0,
              child: ClipOval(
                child: Material(
                  color: thirdColor,
                  child: InkWell(
                    onTap: () => Get.offNamed(Routes.HOME),
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
            const SizedBox(
              height: 28.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Visi UMT',
                  style: semiBold.copyWith(
                    fontSize: 22.0,
                    color: secondColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                  ),
                  child: Text(
                    'Menjadi Universitas kelas dunia yang Islami berbasis Green Industry',
                    style: regular.copyWith(
                      fontSize: 13.8,
                      color: secondColor,
                      height: 2.0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                Text(
                  'Misi UMT',
                  style: semiBold.copyWith(
                    fontSize: 22.0,
                    color: secondColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.2,
                          horizontal: 4.2,
                        ),
                        child: Text(
                          '1. ',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Menyelenggarakan Pendidikan Tinggi yang bermutu, '
                          'berwawasan global dan inklusif berbasis pada '
                          'prinsip Green Industry',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                            height: 2.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.2,
                          horizontal: 2.2,
                        ),
                        child: Text(
                          '2. ',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Menyelenggarakan pengembangan dalam keilmuan dan '
                          'penelitian berbasis Green Industry',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                            height: 2.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.2,
                          horizontal: 2.2,
                        ),
                        child: Text(
                          '3. ',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Menyelengarakan pengabdian kepada masyarakat '
                          'dalam menjawab tantangan Nasional dan Global '
                          'berbasis Green Industry',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                            height: 2.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.2,
                          horizontal: 2.2,
                        ),
                        child: Text(
                          '4. ',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Berprestasi membangun karakter unggul bangsa melalui '
                          'budaya akademik Al Islam dan kemuhammadiyahan',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                            height: 2.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.2,
                          horizontal: 2.2,
                        ),
                        child: Text(
                          '5. ',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Menyelengarakan kerjasama dengan pihak lain dalam '
                          'pengembangan berbasis green industry. '
                          'Menyelengarakan Good University Governance',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                            height: 2.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                Text(
                  'Tujuan UMT',
                  style: semiBold.copyWith(
                    fontSize: 22.0,
                    color: secondColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.2,
                          horizontal: 4.2,
                        ),
                        child: Text(
                          '1. ',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Menghasilakan capaian lulusan yang beriman, mandiri,'
                          ' dan menguasai IPTEKS berbasis green industry.',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                            height: 2.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.2,
                          horizontal: 2.2,
                        ),
                        child: Text(
                          '2. ',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Menghasilkan penelitian dan publikasi ilmiah '
                          'yang inovatif berbasis green industry untuk '
                          'peradaban dunia.',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                            height: 2.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.2,
                          horizontal: 2.2,
                        ),
                        child: Text(
                          '3. ',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Menghasilakan produk keilmuan berbasis green '
                          'industry yang inovatif untuk mencerdaskan '
                          'dan mensejahterakan masyarakat global.',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                            height: 2.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.2,
                          horizontal: 2.2,
                        ),
                        child: Text(
                          '4. ',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Menghasilkan insan yang berkarakter '
                          'unggul, berkemajuan dan islami.',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                            height: 2.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.2,
                          horizontal: 2.2,
                        ),
                        child: Text(
                          '5. ',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Terjalinnya mitra kerja sama untuk bidang '
                          'Pendidikan, penelitian PkM, dan AIKA dalam '
                          'pengembangan IPTEKS pada skala ragional, '
                          'nasional dan internasional.',
                          style: regular.copyWith(
                            fontSize: 13.8,
                            color: secondColor,
                            height: 1.8,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
