import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/data/resources/colors/app_color.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(0xff53B175, color),
        fontFamily: "Gilroy",
        buttonTheme: ButtonThemeData(
          buttonColor: AppColor.kGreen,
          textTheme: ButtonTextTheme.primary,
        ),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: AppColor.kGreen,
        //   ),
        // ),
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
