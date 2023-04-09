import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../colors/app_color.dart';

class CustomCard extends StatelessWidget {
  String productImage;
  String productName;
  String productPrice;
  String productQuantity;

  CustomCard({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.435,
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Image.asset(
                productImage,
                height: Get.height * 0.10,
              ),
              SizedBox(height: 10),
              Row(children: [
                Text(
                  productName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ]),
              Row(
                children: [
                  Text(
                    productQuantity,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.kLightBlack,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    '৳ $productPrice',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 10),
                  Spacer(),
                  Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                      color: AppColor.kGreen,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: AppColor.kWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
