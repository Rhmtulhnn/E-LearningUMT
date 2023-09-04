import 'package:get/get.dart';

import '../controllers/latestinews_controller.dart';

class LatestinewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LatestinewsController>(
      () => LatestinewsController(),
    );
  }
}
