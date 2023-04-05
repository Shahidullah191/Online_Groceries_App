import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class CustomElevatedButton extends StatelessWidget {
  double buttonwidth;
  double buttonheight;
  Color buttonColor;
  IconData? icon;
  String text;
  Function onPressed;
  CustomElevatedButton({
    super.key,
    this.buttonwidth = 200,
    this.buttonheight = 50,
    this.buttonColor = AppColor.kGreen,
    this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonwidth,
      height: buttonheight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () => onPressed(),
        child: Row(
          children: [
            icon != null
                ? SizedBox(width: 30, child: Icon(icon, color: AppColor.kWhite))
                : SizedBox(),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    text,
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
    );
  }
}
