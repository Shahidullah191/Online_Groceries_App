import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:online_groceries/app/data/resources/colors/app_color.dart';

import '../../../data/resources/components/custom_elevated_button.dart';
import '../controllers/sign_in_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInView extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed("/number-sign-in");
                      },
                      child: IntlPhoneField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
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
                  ),
                  Center(
                    child: Text(
                      "Or connect with social media",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.kLightBlack,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                    child: CustomElevatedButton(
                      text: "Continue with Google",
                      icon: FontAwesomeIcons.google,
                      onPressed: () {},
                      buttonColor: AppColor.kBlue,
                      buttonheight: 50,
                      buttonwidth: Get.width - 30,
                      padding: 30,
                    ),
                  ),
                  CustomElevatedButton(
                    text: "Continue with Facebook",
                    icon: FontAwesomeIcons.facebook,
                    onPressed: () {},
                    buttonColor: AppColor.kDarkBlue,
                    buttonheight: 50,
                    buttonwidth: Get.width - 30,
                    padding: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
