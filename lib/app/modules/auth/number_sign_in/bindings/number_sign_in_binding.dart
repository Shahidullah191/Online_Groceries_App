import 'package:get/get.dart';

import '../controllers/number_sign_in_controller.dart';

class NumberSignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NumberSignInController>(
      () => NumberSignInController(),
    );
  }
}
