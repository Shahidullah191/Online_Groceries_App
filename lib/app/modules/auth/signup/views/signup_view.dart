import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/resources/colors/app_color.dart';
import '../../../../data/resources/components/custom_elevated_button.dart';
import '../../../../data/utils/utils.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
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
                'Sign Up',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5),
              Text("Enter your credentials to continue"),
              SizedBox(height: 20),
              Text(
                'Username',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              TextFormField(
                controller: controller.usernameController.value,
                focusNode: controller.usernameFocusNode.value,
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snackBar('Name', 'Enter Username');
                  }
                },
                onFieldSubmitted: (value) {
                  Utils.fieldFocusChange(
                      context,
                      controller.usernameFocusNode.value,
                      controller.emailFocusNode.value);
                },
                decoration: InputDecoration(
                  hintText: 'Enter your Username',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: controller.emailController.value,
                focusNode: controller.emailFocusNode.value,
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snackBar('Email', 'Enter email');
                  } else if (RegExp(
                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                      .hasMatch(value)) {
                    controller.isValidEmail.value = true;
                  } else {
                    controller.isValidEmail.value = false;
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
                    suffixIcon: Obx(
                      () => controller.isValidEmail.value
                          ? Icon(
                              Icons.check,
                              color: AppColor.kGreen,
                            )
                          : SizedBox(),
                    )),
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
              SizedBox(height: 20),
              Wrap(
                children: [
                  Text(
                    'By continuing, you agree to our ',
                    style: TextStyle(fontSize: 14),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Terms of Service',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: AppColor.kGreen),
                    ),
                  ),
                  Text(
                    ' and ',
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: AppColor.kGreen),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomElevatedButton(
                text: "Sign Up",
                onPressed: () {},
                buttonwidth: Get.width * 0.9,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Get.offNamed('/login');
                    },
                    child: Text('Login'),
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
