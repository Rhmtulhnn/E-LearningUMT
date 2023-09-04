import 'package:get/get.dart';

import '../controllers/latestpassword_controller.dart';

class LatestpasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LatestpasswordController>(
      () => LatestpasswordController(),
    );
  }
}
