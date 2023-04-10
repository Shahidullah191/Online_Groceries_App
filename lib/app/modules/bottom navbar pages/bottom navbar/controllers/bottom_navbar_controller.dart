import 'package:get/get.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/home/views/home_view.dart';

import '../../account/views/account_view.dart';
import '../../explore/views/explore_view.dart';
import '../../favourite/views/favourite_view.dart';
import '../../my cart/views/my_cart_view.dart';

class BottomNavbarController extends GetxController {
  //TODO: Implement BottomNavbarController

  RxInt currentIndex = 0.obs;
  final pages = [
    HomeView(),
    ExploreView(),
    MyCartView(),
    FavouriteView(),
    AccountView(),
  ].obs;

  @override
  void onInit() {
    super.onInit();
  }
}
