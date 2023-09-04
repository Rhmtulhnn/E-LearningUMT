import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/research_controller.dart';

class ResearchView extends GetView<ResearchController> {
  const ResearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResearchView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResearchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
