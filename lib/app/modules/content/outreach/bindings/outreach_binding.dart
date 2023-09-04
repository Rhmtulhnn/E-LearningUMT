import 'package:get/get.dart';

import '../controllers/outreach_controller.dart';

class OutreachBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OutreachController>(
      () => OutreachController(),
    );
  }
}
