import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:online_groceries/app/data/resources/colors/app_color.dart';
import 'package:online_groceries/app/data/resources/components/custom_elevated_button.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kWhite,
        elevation: 0,
        leading: Container(
          height: 20,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColor.kGreen,
              width: 2,
            ),
          ),
          child: Image.asset(
            'assets/images/explore/meat_fish.png',
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Shahidullah',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.edit,
                  size: 20,
                  color: AppColor.kGreen,
                ),
              ],
            ),
            Text(
              'shahidullah.cse.gub@gmail.com',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            customListTile(
              'Orders',
              FontAwesomeIcons.bagShopping,
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
            customListTile(
              'My Details',
              FontAwesomeIcons.addressCard,
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
            customListTile(
              'Delivery Address',
              FontAwesomeIcons.locationDot,
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
            customListTile(
              'Payment Methods',
              FontAwesomeIcons.creditCard,
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
            customListTile(
              'Promo Cord',
              FontAwesomeIcons.tag,
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
            customListTile(
              'Notifications',
              FontAwesomeIcons.bell,
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
            customListTile(
              'Help',
              FontAwesomeIcons.questionCircle,
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
            customListTile(
              'About',
              FontAwesomeIcons.circleInfo,
            ),
            SizedBox(height: 20),

            // Logout Button
            InkWell(
              onTap: () {},
              child: Container(
                width: Get.width * 0.9,
                height: Get.height * 0.09,
                color: AppColor.kWhite,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        FontAwesomeIcons.arrowRightFromBracket,
                        color: AppColor.kGreen,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        "Logout",
                        style: TextStyle(
                            color: AppColor.kGreen,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  ListTile customListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColor.kBlack,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 20,
        color: AppColor.kBlack,
      ),
    );
  }
}
