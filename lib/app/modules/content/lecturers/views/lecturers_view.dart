import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lecturers_controller.dart';

class LecturersView extends GetView<LecturersController> {
  const LecturersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LecturersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LecturersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
