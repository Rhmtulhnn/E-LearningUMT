import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siakadumt/app/routes/app_pages.dart';
import 'package:siakadumt/app/shared/theme.dart';

import '../controllers/termcondition_controller.dart';

class TermconditionView extends GetView<TermconditionController> {
  const TermconditionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TermConditionView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TermConditionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
