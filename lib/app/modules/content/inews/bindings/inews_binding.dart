import 'package:get/get.dart';

import '../controllers/inews_controller.dart';

class InewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InewsController>(
      () => InewsController(),
    );
  }
}
