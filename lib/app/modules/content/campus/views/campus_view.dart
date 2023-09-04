import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../../../../shared/theme.dart';
import '../controllers/campus_controller.dart';

class CampusView extends GetView<CampusController> {
  const CampusView({Key? key}) : super(key: key);
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
                  'Awalnya Berdirinya',
                  style: semiBold.copyWith(
                    fontSize: 20.8,
                    color: secondColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    '1993 STIE Muhammadiyah Tangerang',
                    style: medium.copyWith(
                      fontSize: 13.4,
                      color: secondColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 0.86,
                  ),
                  child: Text(
                    'Pada tanggal 1 Juni 1993 STIE Muhammadiyah Tangerang '
                    'didirikan yang merupakan salah satu amal usaha milik '
                    'persyarikatan Muhammadiyah di bawah naungan Majelis '
                    'Pendidikan Tinggi Penelitian dan pengembangan '
                    '(DIKTILITBANG) Muhammadiyah berdasarkan Surat '
                    'Keputusan Pimpinan Wilayah Muhammadiyah DKI Jakarta '
                    'No.1.A/SK/B/1992 tertanggal 10 November 1992',
                    style: regular.copyWith(
                      fontSize: 13,
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
                  'Berdirinya STAI',
                  style: semiBold.copyWith(
                    fontSize: 20.8,
                    color: secondColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 0.86,
                  ),
                  child: Text(
                    '2000 Berdirinya Sekolah TInggi Agama Islam '
                    '(STAI) Universitas Muhammdiyah Tangerang '
                    'mulai didirikan tahun 2000',
                    style: regular.copyWith(
                      fontSize: 13,
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
                  'Berdirinya STIKES',
                  style: semiBold.copyWith(
                    fontSize: 20.8,
                    color: secondColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 0.86,
                  ),
                  child: Text(
                    '2004 Sekolah Tinggi Ilmu Kesehatan Disusul kemudian '
                    'lahirnya Sekolah Tinggi Ilmu Kesehatan (STIKES) '
                    'Muhammdiyah Tangerang mulai didirikan tahun 2004',
                    style: regular.copyWith(
                      fontSize: 13,
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
                  'Lahirnya UMT',
                  style: semiBold.copyWith(
                    fontSize: 20.8,
                    color: secondColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 0.86,
                  ),
                  child: Text(
                    '2009 - 2019 Bergabung menjadi UMT dengan meleburnya tiga '
                        'sekolah tinggi yang akhirnya menjadi Universitas '
                        'Muhammadiyah Tangerang menjadikan semangat para '
                        'Founding Father agar Universitas Muhammadiyah '
                        'Tangerang mampu sejajar dengan PTM lainnya di '
                        'sekitar JABODITABEK dan Banten khususnya.',
                    style: regular.copyWith(
                      fontSize: 13,
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
                  'Perkembangan UMT',
                  style: semiBold.copyWith(
                    fontSize: 20.8,
                    color: secondColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 0.86,
                  ),
                  child: Text(
                    '2019 Ahmad Amarullah dilantik menjadi Rektor Universitas '
                        'Muhammadiyah Tangerang mempunyai target yaitu '
                        'Gedung menjulang Tinggi yang dimulai dikontruksikan '
                        'pada tahun 2020 lalu pada tahun 2022 bulan maret '
                        'gedung 19 lantai Universitas Muhammadiyah Tangerang '
                        'sudah diresmikan oleh Rektor dan sekaligus gedung '
                        'ini dinamakan 1912 sesuai dengan tahun berdiri '
                        'nya Persyarikatan Muhammdiyah',
                    style: regular.copyWith(
                      fontSize: 13,
                      color: secondColor,
                      height: 2.0,
                    ),
                    textAlign: TextAlign.justify,
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
