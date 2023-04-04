import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';

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
                // IntlPhoneField(
                //   decoration: InputDecoration(
                //     labelText: 'Phone Number',
                //     border: OutlineInputBorder(
                //       borderSide: BorderSide(),
                //     ),
                //   ),
                //   initialCountryCode: 'IN',
                //   onChanged: (phone) {
                //     print(phone.completeNumber);
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
