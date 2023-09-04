import 'package:get/get.dart';

import '../controllers/termcondition_controller.dart';

class TermconditionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermconditionController>(
      () => TermconditionController(),
    );
  }
}
