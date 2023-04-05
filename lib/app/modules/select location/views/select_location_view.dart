import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/resources/colors/app_color.dart';
import '../controllers/select_location_controller.dart';

class SelectLocationView extends GetView<SelectLocationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.kWhite,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Image.asset(
              "assets/images/select_location/location.png",
              height: Get.height * 0.3,
              width: Get.width * 0.5,
            ),
            Text(
              "Select your location",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Swithch on your location to stay in tune with what’s happening in your area",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
