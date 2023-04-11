import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../colors/app_color.dart';
import '../custom_elevated_button.dart';

error() {
  Get.dialog(
    AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: Align(
        alignment: Alignment.topLeft,
        child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.close)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/explore/error.png',
            height: 200,
            width: 200,
          ),
          Container(
            width: 200,
            child: Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                'Oops! Order Failed',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),
          Container(
            width: 250,
            child: Text(
              'Something went tembly wrong',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                text: 'Track Order',
                onPressed: () {
                  Get.back();
                  error();
                },
                buttonwidth: Get.width * 0.9,
              ),
              SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                buttonColor: AppColor.kWhite,
                text: 'Back to Home',
                onPressed: () {
                  Get.offAllNamed('/bottom-navbar');
                },
                textColor: AppColor.kBlack,
                buttonwidth: Get.width * 0.9,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
