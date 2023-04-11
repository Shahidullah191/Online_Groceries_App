import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:online_groceries/app/data/resources/components/custom_elevated_button.dart';

import '../../../data/resources/colors/app_color.dart';
import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kWhite,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          RotatedBox(
            quarterTurns: 3,
            child: IconButton(
              icon: Icon(Icons.logout, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CarouselSlider(
                          carouselController: controller.controller2,
                          options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                controller.current.value = index;
                              },
                              viewportFraction: 1.0,
                              autoPlay: true),
                          items: [1, 2, 3, 4, 5].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Image.asset(
                                  'assets/images/home/apple.png',
                                  width: Get.width * 0.8,
                                  fit: BoxFit.fitWidth,
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(height: 20.0),
                    ],
                  ),
                  Obx(
                    () => Positioned(
                      bottom: -5,
                      right: 0,
                      left: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [1, 2, 3, 4, 5].asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                controller.controller2.animateToPage(entry.key),
                            child: Container(
                              width: 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (controller.current.value != entry.key
                                    ? Colors.grey.shade400
                                    : Colors.red),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Naturel Red Apple',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                      )),
                ],
              ),
              Text(
                '1kg, Price',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  IconButton(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: AppColor.kGreen,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$ 1.99',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              ExpansionTile(
                tilePadding: EdgeInsets.zero,
                initiallyExpanded: true,
                title: Text('Product Detail'),
                children: [
                  Text(
                    'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
              SizedBox(height: 10.0),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Nutritions'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '100g',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: AppColor.kBlack),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_forward_ios,
                        size: 15, color: AppColor.kBlack),
                  ],
                ),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Review'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RatingBar.builder(
                      minRating: 1,
                      initialRating: 5,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemBuilder: (context, index) {
                        return Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                        );
                      },
                      onRatingUpdate: (value) {},
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_forward_ios,
                        size: 15, color: AppColor.kBlack),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: 'Add To Basket',
        buttonwidth: Get.width * 0.9,
      ),
    );
  }
}
