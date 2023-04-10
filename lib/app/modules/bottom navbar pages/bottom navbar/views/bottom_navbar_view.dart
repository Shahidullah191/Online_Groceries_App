import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:online_groceries/app/data/resources/colors/app_color.dart';

import '../controllers/bottom_navbar_controller.dart';

class BottomNavbarView extends GetView<BottomNavbarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //backgroundColor: AppColor.kDarkGreen,
          selectedItemColor: AppColor.kGreen,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            color: AppColor.kGreen,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
          currentIndex: controller.currentIndex.value,
          items: [
            BottomNavigationBarItem(
              label: "Shop",
              icon: const Icon(
                FontAwesomeIcons.shop,
              ),
              //backgroundColor: AppColor.kDarkGreen,
            ),
            BottomNavigationBarItem(
              label: "Explore",
              icon: const Icon(FontAwesomeIcons.magnifyingGlass),
              //backgroundColor: AppColor.kDarkGreen,
            ),
            BottomNavigationBarItem(
              label: "Cart",
              icon: const Icon(FontAwesomeIcons.cartShopping),
              //backgroundColor: AppColor.kDarkGreen,
            ),
            BottomNavigationBarItem(
              label: "Favorite",
              icon: const Icon(FontAwesomeIcons.heart),
              //backgroundColor: AppColor.kDarkGreen,
            ),
            BottomNavigationBarItem(
              label: "Account",
              icon: const Icon(FontAwesomeIcons.user),
              //backgroundColor: AppColor.kDarkGreen,
            ),
          ],
          onTap: (index) {
            print(index);
            controller.currentIndex.value = index;
          },
        ),
      ),
      body: Obx(
        () => controller.pages[controller.currentIndex.value],
      ),
    );
  }
}
