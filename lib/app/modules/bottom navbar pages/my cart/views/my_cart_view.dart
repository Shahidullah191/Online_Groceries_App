import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/resources/colors/app_color.dart';
import '../../../../data/resources/components/custom_elevated_button.dart';
import '../../../../data/resources/components/mycart/checkout_bottom_sheet.dart';
import '../controllers/my_cart_controller.dart';

class MyCartView extends GetView<MyCartController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAllNamed('/bottom-navbar');
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.kWhite,
          elevation: 0,
          title: Text(
            'My Cart',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              "assets/images/home/kapsikam.png",
                              height: 65,
                              width: 70,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            flex: 7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bell Pepper Red",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Text(
                                  "1kg, Price",
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: AppColor.kWhite,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColor.kBlack
                                                .withOpacity(0.1),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0, 1),
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: AppColor.kGreen,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          color: AppColor.kBlack,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: AppColor.kWhite,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColor.kBlack
                                                .withOpacity(0.1),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0, 1),
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: AppColor.kGreen,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.clear,
                                      color: AppColor.kBlack,
                                    )),
                                SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  "\$1.50",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: AppColor.kBlack),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: CustomElevatedButton(
          text: "Go to Checkout",
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => CheckOutBottomSheet());
          },
          buttonheight: 50,
          buttonwidth: Get.width * 0.9,
        ),
      ),
    );
  }
}
