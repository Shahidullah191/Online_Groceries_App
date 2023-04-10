import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/resources/colors/app_color.dart';
import '../../../../data/resources/components/custom_elevated_button.dart';
import '../controllers/my_cart_controller.dart';

class MyCartView extends GetView<MyCartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                    fontWeight: FontWeight.w600, fontSize: 16),
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
                                          color:
                                              AppColor.kBlack.withOpacity(0.1),
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
                                          color:
                                              AppColor.kBlack.withOpacity(0.1),
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
          // bottomSheet();
        },
        buttonheight: 50,
        buttonwidth: Get.width * 0.9,
      ),
    );
  }
}

// bottomSheet() {
//   return Get.bottomSheet(Wrap(
//     direction: Axis.vertical,
//     children: [
//       Container(
//         child: Container(
//           decoration: BoxDecoration(
//             color: AppColor.kWhite,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20),
//               topRight: Radius.circular(20),
//             ),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ListTile(
//                 title: Text(
//                   'Checkout',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                 ),
//                 trailing: InkWell(
//                   onTap: () {
//                     Get.back();
//                   },
//                   child: Icon(
//                     Icons.close,
//                     color: AppColor.kBlack,
//                   ),
//                 ),
//               ),
//               ListTile(
//                 title: Text('Delivery'),
//                 trailing: Icon(Icons.arrow_forward_ios),
//               ),
//               ListTile(
//                 title: Text('Payment Method'),
//                 trailing: Icon(Icons.arrow_forward_ios),
//               ),
//               ListTile(
//                 title: Text('Promo Code'),
//                 trailing: Icon(Icons.arrow_forward_ios),
//               ),
//               ListTile(
//                 title: Text('Total Cost'),
//                 trailing: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       '\$1.50',
//                       style: TextStyle(
//                           fontWeight: FontWeight.w600, color: AppColor.kBlack),
//                     ),
//                     Icon(Icons.arrow_forward_ios),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 15,
//                 ),
//                 child: Wrap(
//                   children: [
//                     Text(
//                       'By placing an order you agree to our ',
//                       style: TextStyle(fontSize: 14),
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Text(
//                         'Terms',
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             color: AppColor.kBlack),
//                       ),
//                     ),
//                     Text(
//                       ' and ',
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Text(
//                         'Conditions',
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             color: AppColor.kBlack),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               CustomElevatedButton(
//                 text: "Place Order",
//                 onPressed: () {},
//                 buttonheight: 50,
//                 buttonwidth: Get.width * 0.9,
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   ));
// }
