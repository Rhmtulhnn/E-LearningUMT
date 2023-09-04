import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final isVoiceEnabled = false.obs;
  final count = 0.obs;

  RxInt carouselIndex = 0.obs;
  CarouselController carouselController = CarouselController();

  void toggleVoiceEnabled() {
    isVoiceEnabled.value = !isVoiceEnabled.value;
  }

  final List<IconData> icon = [

  ];

  final List<String> imgList = [

  ];
}
