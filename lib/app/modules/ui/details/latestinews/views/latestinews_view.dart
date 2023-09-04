import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/latestinews_controller.dart';

class LatestinewsView extends GetView<LatestinewsController> {
  const LatestinewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LatestinewsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LatestinewsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
