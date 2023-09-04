import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/inews_controller.dart';

class InewsView extends GetView<InewsController> {
  const InewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InewsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InewsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
