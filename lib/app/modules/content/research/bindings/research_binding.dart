import 'package:get/get.dart';

import '../controllers/research_controller.dart';

class ResearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResearchController>(
      () => ResearchController(),
    );
  }
}
