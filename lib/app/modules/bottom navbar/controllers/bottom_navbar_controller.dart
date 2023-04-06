import 'package:get/get.dart';
import 'package:online_groceries/app/modules/home/views/home_view.dart';

class BottomNavbarController extends GetxController {
  //TODO: Implement BottomNavbarController

  RxInt currentIndex = 0.obs;
  final pages = [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ].obs;

  @override
  void onInit() {
    super.onInit();
  }
}
