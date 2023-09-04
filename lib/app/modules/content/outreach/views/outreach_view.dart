import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/outreach_controller.dart';

class OutreachView extends GetView<OutreachController> {
  const OutreachView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OutreachView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OutreachView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
