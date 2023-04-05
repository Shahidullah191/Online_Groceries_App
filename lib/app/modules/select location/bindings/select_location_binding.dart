import 'package:get/get.dart';

import '../controllers/select_location_controller.dart';

class SelectLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectLocationController>(
      () => SelectLocationController(),
    );
  }
}
