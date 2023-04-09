import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_groceries/app/data/resources/colors/app_color.dart';

import '../../../data/resources/components/explore/custom_container_explore.dart';
import '../controllers/explore_controller.dart';

class ExploreView extends GetView<ExploreController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kWhite,
        elevation: 0,
        title: Text(
          'Find Products',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
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
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  runSpacing: 12,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    CustomContainerExplore(
                      color: AppColor.kGreen.withOpacity(0.1),
                      image: 'assets/images/explore/fruits.png',
                      title: 'Frash Fruits & Vegetable',
                    ),
                    CustomContainerExplore(
                      color: AppColor.kBrawon.withOpacity(0.1),
                      image: 'assets/images/explore/oil.png',
                      title: 'Cooking Oil & Ghee',
                      borderColor: AppColor.kBrawon,
                    ),
                    CustomContainerExplore(
                      color: AppColor.kLightPink.withOpacity(0.1),
                      image: 'assets/images/explore/meat_fish.png',
                      title: 'Meat & Fish',
                      borderColor: AppColor.kLightPink,
                    ),
                    CustomContainerExplore(
                      color: AppColor.kLightPurple.withOpacity(0.1),
                      image: 'assets/images/explore/snacks.png',
                      title: 'Bakery & Snacks',
                      borderColor: AppColor.kLightPurple,
                    ),
                    CustomContainerExplore(
                      color: AppColor.kLightYellow.withOpacity(0.1),
                      image: 'assets/images/explore/eggs.png',
                      title: 'Dairy & Eggs',
                      borderColor: AppColor.kLightYellow,
                    ),
                    CustomContainerExplore(
                      color: AppColor.kLightSky.withOpacity(0.1),
                      image: 'assets/images/explore/meat_fish.png',
                      title: 'Beverages',
                      borderColor: AppColor.kLightSky,
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
