import 'package:get/get.dart';

class SelectLocationController extends GetxController {
  //TODO: Implement SelectLocationController

  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ].obs;

  Rx<String?> selectedValue = Rx(null);

  @override
  void onInit() {
    super.onInit();
  }
}
