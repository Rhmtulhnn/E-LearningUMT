import 'package:get/get.dart';

import '../controllers/visionmission_controller.dart';

class VisionmissionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VisionmissionController>(
      () => VisionmissionController(),
    );
  }
}
