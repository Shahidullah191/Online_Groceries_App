import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../colors/app_color.dart';

class CustomContainerGroceries extends StatelessWidget {
  Color color;
  String image;
  String title;
  CustomContainerGroceries({
    super.key,
    required this.color,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.7,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 100,
            width: 100,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
