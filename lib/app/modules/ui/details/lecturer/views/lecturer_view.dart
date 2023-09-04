import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lecturer_controller.dart';

class LecturerView extends GetView<LecturerController> {
  const LecturerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LecturerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LecturerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
