import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_cart_controller.dart';

class MyCartView extends GetView<MyCartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyCartView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MyCartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
