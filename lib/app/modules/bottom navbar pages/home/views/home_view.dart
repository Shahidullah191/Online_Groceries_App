import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_groceries/app/data/resources/components/home/custom_container_groceries.dart';

import '../../../../data/resources/colors/app_color.dart';
import '../../../../data/resources/components/home/custom_card_design.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  HomeController get controller => Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.kWhite,
          title: Image.asset(
            'assets/images/home/icon_carrot.png',
            height: Get.height * 0.04,
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: AppColor.kLightBlack,
                ),
                Text(
                  'Dhanmondi, Dhaka',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.kLightBlack,
                  ),
                ),
              ],
            ),
          )),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10.0),
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CarouselSlider(
                      carouselController: controller.controller2,
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            controller.current.value = index;
                          },
                          height: 114,
                          viewportFraction: 1.0,
                          autoPlay: true),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Card(
                              elevation: 0,
                              child: Container(
                                height: 100,
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: AppColor.kGreen,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Image.asset(
                                      'assets/images/home/icon_carrot.png',
                                      height: Get.height * 0.04,
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Get 10% off',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: AppColor.kWhite,
                                          ),
                                        ),
                                        Text(
                                          'on your first order',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.kWhite,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: AppColor.kWhite,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Get Offer',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: AppColor.kGreen,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  Obx(
                    () => Positioned(
                      bottom: 10,
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exclusive Offer',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.kGreen,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  runSpacing: 12,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    CustomCard(
                      productImage: 'assets/images/home/bananna.png',
                      productName: 'Organic Banana',
                      productPrice: "150",
                      productQuantity: '7pcs price',
                    ),
                    CustomCard(
                      productImage: 'assets/images/home/apple.png',
                      productName: 'Red Apple',
                      productPrice: "200",
                      productQuantity: '1kg price',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Selling',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.kGreen,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  runSpacing: 12,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    CustomCard(
                      productImage: 'assets/images/home/kapsikam.png',
                      productName: 'Kapsikam',
                      productPrice: "150",
                      productQuantity: '7pcs price',
                    ),
                    CustomCard(
                      productImage: 'assets/images/home/ada.png',
                      productName: 'Ada',
                      productPrice: "200",
                      productQuantity: '1kg price',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Groceries',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.kGreen,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomContainerGroceries(
                          color: AppColor.kBrawon.withOpacity(0.2),
                          image: "assets/images/home/pulses.png",
                          title: "Pulses"),
                      SizedBox(width: 10),
                      CustomContainerGroceries(
                          color: AppColor.kGreen.withOpacity(0.2),
                          image: "assets/images/home/rice.png",
                          title: "Rice"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  runSpacing: 12,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    CustomCard(
                      productImage: 'assets/images/home/beef.png',
                      productName: 'Beef Bone',
                      productPrice: "750",
                      productQuantity: '1Kg price',
                    ),
                    CustomCard(
                      productImage: 'assets/images/home/chicken.png',
                      productName: 'Broiler Chicken',
                      productPrice: "200",
                      productQuantity: '1Kg price',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
