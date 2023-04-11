import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_groceries/app/data/resources/components/custom_elevated_button.dart';

import '../../../../data/resources/colors/app_color.dart';
import '../controllers/favourite_controller.dart';

class FavouriteView extends GetView<FavouriteController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAllNamed('/bottom-navbar');
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.kWhite,
          elevation: 0,
          title: Text(
            'Favorite',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: Image.asset(
                            'assets/images/explore/beverages/sprite.png'),
                        title: Text(
                          'Sprite Can',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        subtitle: Text(
                          '325ml, Price',
                          style: TextStyle(fontSize: 14),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "\$1.50",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: AppColor.kBlack),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,
                                color: AppColor.kBlack, size: 15),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: CustomElevatedButton(
          text: "Add All To Cart",
          onPressed: () {},
          buttonheight: 50,
          buttonwidth: Get.width * 0.9,
        ),
      ),
    );
  }
}
