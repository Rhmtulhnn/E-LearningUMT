import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() => runApp(const SiakadUMT());

class SiakadUMT extends StatefulWidget {
  const SiakadUMT({super.key});

  @override
  State<SiakadUMT> createState() => _SiakadUMTState();
}

class _SiakadUMTState extends State<SiakadUMT> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Siakad UMT",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
