import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:online_groceries/app/data/resources/colors/app_color.dart';

import '../controllers/sign_in_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInView extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/sign_in/sign_in.png",
              height: Get.height * 0.4,
              width: double.infinity,
              fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get your groceries\nwith nectar",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: IntlPhoneField(
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
                ),
                Center(
                  child: Text(
                    "Or connect with social media",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.kBlack,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(Get.width - 30, 50),
                    backgroundColor: AppColor.kBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SizedBox(
                          width: 30,
                          child: Icon(FontAwesomeIcons.google,
                              color: AppColor.kWhite)),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              "Continue with Google",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColor.kWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(Get.width - 30, 50),
                    backgroundColor: AppColor.kDarkBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SizedBox(
                          width: 30,
                          child: Icon(FontAwesomeIcons.facebook,
                              color: AppColor.kWhite)),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              "Continue with Facebook",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColor.kWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
