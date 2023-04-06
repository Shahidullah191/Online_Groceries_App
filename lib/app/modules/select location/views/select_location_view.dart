import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_groceries/app/data/resources/components/custom_elevated_button.dart';

import '../../../data/resources/colors/app_color.dart';
import '../controllers/select_location_controller.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SelectLocationView extends GetView<SelectLocationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.kWhite,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/select_location/location.png",
                height: Get.height * 0.3,
                width: Get.width * 0.5,
              ),
              Text(
                "Select your location",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Swithch on your location to stay in tune with what’s happening in your area",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your Zone",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Obx(
                () => DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Select Item',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                    ),
                    items: controller.items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                    value: controller.selectedValue.value,
                    onChanged: (value) {
                      controller.selectedValue.value = value as String;
                    },
                    buttonStyleData: ButtonStyleData(
                      height: Get.height * 0.06,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColor.kWhite,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      width: Get.width * 0.6,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your Area",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Obx(
                () => DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Types of your area',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                    ),
                    items: controller.items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                    value: controller.selectedValue.value,
                    onChanged: (value) {
                      controller.selectedValue.value = value as String;
                    },
                    buttonStyleData: ButtonStyleData(
                      height: Get.height * 0.06,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColor.kWhite,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      width: Get.width * 0.6,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomElevatedButton(
                text: "Submit",
                onPressed: () {
                  Get.toNamed("/bottom-navbar");
                },
                buttonwidth: Get.width * 0.8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
