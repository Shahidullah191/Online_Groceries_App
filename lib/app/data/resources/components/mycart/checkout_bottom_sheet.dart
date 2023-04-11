import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/my%20cart/pages/order_accepted.dart';

import '../../colors/app_color.dart';
import '../custom_elevated_button.dart';

class CheckOutBottomSheet extends StatelessWidget {
  const CheckOutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              'Checkout',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            trailing: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.close,
                color: AppColor.kBlack,
              ),
            ),
          ),
          Divider(
            height: 0,
            thickness: 1,
          ),
          ListTile(
            title: Text('Delivery'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Select Method',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: AppColor.kBlack),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios, size: 15, color: AppColor.kBlack),
              ],
            ),
          ),
          Divider(
            height: 0,
            thickness: 1,
          ),
          ListTile(
            title: Text('Payment Method'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  FontAwesomeIcons.ccMastercard,
                  size: 15,
                  color: AppColor.kBlue,
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios, size: 15, color: AppColor.kBlack),
              ],
            ),
          ),
          Divider(
            height: 0,
            thickness: 1,
          ),
          ListTile(
            title: Text('Promo Code'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Pick Discount',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: AppColor.kBlack),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios, size: 15, color: AppColor.kBlack),
              ],
            ),
          ),
          Divider(
            height: 0,
            thickness: 1,
          ),
          ListTile(
            title: Text('Total Cost'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '\$1.50',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: AppColor.kBlack),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios, size: 15, color: AppColor.kBlack),
              ],
            ),
          ),
          Divider(
            height: 0,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            child: Wrap(
              children: [
                Text(
                  'By placing an order you agree to our ',
                  style: TextStyle(fontSize: 14),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Terms',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: AppColor.kBlack),
                  ),
                ),
                Text(
                  ' and ',
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Conditions',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: AppColor.kBlack),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: CustomElevatedButton(
              text: "Place Order",
              onPressed: () {
                Get.back();
                Get.to(() => OrderAccepted());
              },
              buttonheight: 50,
              buttonwidth: Get.width * 0.9,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
