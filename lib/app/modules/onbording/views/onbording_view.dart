import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/onbording_controller.dart';

class OnbordingView extends GetView<OnbordingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(
              "assets/images/onbording/onbording_bg.png",
            ).image,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/images/onbording/carrot_icon.png",
              height: Get.height / 300 * 50,
              width: 48 * Get.width / 300,
            ),
            Text(
              "Welcome \nto our store",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Ger your groceries in as fast as one hour",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(Get.width * 0.85, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Get.toNamed("/sign-in");
                },
                child: Text("Get Started",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
