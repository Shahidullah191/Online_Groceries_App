import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries/app/data/resources/colors/app_color.dart';
import 'package:online_groceries/app/data/resources/components/mycart/error.dart';

import '../../../../data/resources/components/custom_elevated_button.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Get.offAllNamed('/bottom-navbar');
        return Future.value(false);
      },
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/explore/order_done.png',
                      height: 200,
                      width: 200,
                    ),
                    Container(
                      width: 200,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40, bottom: 20),
                        child: Text(
                          'Your order has been accepted',
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
                        '''Your items has been placcd and is on it's way to being processed''',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
