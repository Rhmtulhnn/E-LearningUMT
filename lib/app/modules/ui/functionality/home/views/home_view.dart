import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../../../shared/theme.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fifthColor,
      body: SingleChildScrollView(
        child: SizedBox(
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 166.8,
                    width: Get.size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff008EF4),
                          Color(0xff6066C7),
                        ],
                      ),
                    ),
                    child: Stack(
                      children: [
                        SizedBox(
                          child: Stack(
                            children: [
                              Positioned(
                                top: -10,
                                right: -50,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200),
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color(0xff008EF4),
                                        const Color(0xff0C159F)
                                            .withOpacity(0.1),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -20,
                                bottom: -30,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200),
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color(0xff008EF4),
                                        const Color(0xff0C159F)
                                            .withOpacity(0.1),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 36.0,
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Selamat datang',
                                      style: regular.copyWith(
                                        fontSize: 12.0,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    Text(
                                      'Rahmatul Hannan',
                                      style: semiBold.copyWith(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 60.0,
                                ),
                                ClipOval(
                                  child: Image.asset(
                                    'assets/images/logo-avatar.png',
                                    width: 48.0,
                                    height: 48.0,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 48.0,
                                    height: 48.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors
                                          .white, // Ganti warna background bulat sesuai kebutuhan
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/notification.svg',
                                          height: 28.0,
                                          width: 28.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CarouselSlider(
                    items: controller.imgList.map(
                      (item) {
                        return Container(
                          margin: const EdgeInsets.all(6.0),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                24.0,
                              ),
                            ),
                            child: Image.network(
                              item,
                              fit: BoxFit.cover,
                              width: 400.0,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayAnimationDuration: const Duration(seconds: 1),
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        controller.carouselIndex.value = index;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.8),
                    child: Container(
                      height: 220,
                      width: Get.width,
                      color: Colors.white, // Replace with your desired color
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 26.8,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/logo-sgs.png', // Replace with your PNG image asset path
                                height: 78.0,
                                width: 78.0,
                              ),
                              const SizedBox(
                                height: 14.0,
                              ),
                              Image.asset(
                                'assets/images/logo-akr.png', // Replace with your PNG image asset path
                                height: 68.0,
                                width: 68.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 26.0,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Peringkat Akreditasi',
                                  style: semiBold.copyWith(
                                    fontSize: 16.0,
                                    color: secondColor,
                                  ),
                                ),
                                Text(
                                  'Terakreditasi B',
                                  style: semiBold.copyWith(
                                    fontSize: 13.8,
                                    color: primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16.0,
                                ),
                                Text(
                                  'Semua Program Studi yang ada telah terakreditasi B '
                                  'oleh Badan Akreditasi Nasional Perguruan '
                                  'Tinggi di Indonesia',
                                  style: regular.copyWith(
                                    fontSize: 12.8,
                                    color:
                                        secondColor, // Replace with your desired color
                                    height: 2.0,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 50.0,
                    ),
                    child: Container(
                      width: Get.size.width,
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 14.0,
                                  horizontal: 28.0,
                                ),
                                child: Image.asset(
                                  'assets/images/logo-umt.png',
                                  width: 68.0,
                                  height: 68.0,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Visi & Misi',
                                      style: bold.copyWith(
                                        fontSize: 16.0,
                                        color: secondColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      'Menjadikan Universitas kelas Dunia\nyang Islami '
                                      'berbasis Green Industry',
                                      style: regular.copyWith(
                                        fontSize: 12.8,
                                        color: secondColor,
                                        height: 2.0,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 140.8,
                left: 40.0,
                right: 40.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.8),
                  height: Get.height * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: tertiaryColor.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 18.0,
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/search.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: TextEditingController(),
                          autocorrect: true,
                          textCapitalization: TextCapitalization.sentences,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                            color: secondColor,
                            fontSize: 14.8,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Cari berita terbaru',
                            hintStyle: regular.copyWith(
                              fontSize: 14.8,
                              color: tertiaryColor,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.mic,
                                size: 24.0,
                                color: tertiaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
