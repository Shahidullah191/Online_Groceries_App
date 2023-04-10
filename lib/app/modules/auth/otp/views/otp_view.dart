import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../../data/resources/colors/app_color.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter your mobile number",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Enter the 4 digit code sent to you at",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              length: 4,
              closeKeyboardWhenCompleted: true,
              controller: controller.otpController.value,
              keyboardType: TextInputType.number,
              validator: (v) {
                if (v == null) {
                } else if (v.length < 4) {
                  return "Please enter 4 digit code";
                }
                return null;
              },
              onCompleted: (value) {
                print(value);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: InkWell(
              onTap: () {
                Get.toNamed("/login");
              },
              child: SizedBox(
                height: 30,
                child: Center(
                  child: Text(
                    "Resend Code",
                    style: TextStyle(
                        color: AppColor.kGreen,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              Get.toNamed("/select-location");
            },
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColor.kWhite,
            ),
          ),
        ],
      ),
    );
  }
}
