import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_groceries/app/data/resources/colors/app_color.dart';
import 'package:online_groceries/app/data/resources/components/custom_elevated_button.dart';

import '../../../../data/utils/utils.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 50),
                child: Center(
                  child: Image.asset(
                    'assets/images/home/icon_carrot.png',
                    height: 55,
                    width: 47,
                  ),
                ),
              ),
              Text(
                'Loging',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5),
              Text("Enter your emails and password"),
              SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              TextFormField(
                controller: controller.emailController.value,
                focusNode: controller.emailFocusNode.value,
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snackBar('Email', 'Enter email');
                  }
                },
                onFieldSubmitted: (value) {
                  Utils.fieldFocusChange(
                      context,
                      controller.emailFocusNode.value,
                      controller.passwordFocusNode.value);
                },
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Password',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Obx(
                () => TextFormField(
                  controller: controller.passwordController.value,
                  focusNode: controller.passwordFocusNode.value,
                  obscureText: controller.isObsecure.value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      Utils.snackBar('Password', 'Enter password');
                    }
                  },
                  onFieldSubmitted: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.isObsecure.value =
                            !controller.isObsecure.value;
                      },
                      icon: Icon(
                        controller.isObsecure.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColor.kLightBlack,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: Text('Forgot Password?'))),
              CustomElevatedButton(
                text: "Log In",
                onPressed: () {
                  Get.offAllNamed('/bottom-navbar');
                },
                buttonwidth: Get.width * 0.9,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Get.offNamed('/signup');
                    },
                    child: Text('SignUp'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
