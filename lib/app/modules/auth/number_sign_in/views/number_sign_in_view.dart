import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:online_groceries/app/data/resources/colors/app_color.dart';

import '../controllers/number_sign_in_controller.dart';

class NumberSignInView extends GetView<NumberSignInController> {
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
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),

              countries: ['BD'],
              // ignore: avoid_returning_null_for_void
              onCountryChanged: (c) => null,
              flagsButtonMargin: EdgeInsets.only(left: 10),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              showDropdownIcon: false,
              initialCountryCode: 'BD',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/otp");
        },
        child: Icon(
          Icons.arrow_forward_ios,
          color: AppColor.kWhite,
        ),
      ),
    );
  }
}
