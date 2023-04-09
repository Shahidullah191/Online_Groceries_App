import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../colors/app_color.dart';

// ignore: must_be_immutable
class CustomContainerExplore extends StatelessWidget {
  Color color;
  String image;
  String title;
  Color borderColor;
  CustomContainerExplore({
    super.key,
    required this.color,
    required this.image,
    required this.title,
    this.borderColor = AppColor.kGreen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      width: Get.width * 0.435,
      height: Get.height * 0.27,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: borderColor,
            width: 2,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            height: 100,
            width: 100,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
