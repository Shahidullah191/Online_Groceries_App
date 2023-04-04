import 'package:get/get.dart';

import 'package:online_groceries/app/modules/home/bindings/home_binding.dart';
import 'package:online_groceries/app/modules/home/views/home_view.dart';
import 'package:online_groceries/app/modules/onbording/bindings/onbording_binding.dart';
import 'package:online_groceries/app/modules/onbording/views/onbording_view.dart';
import 'package:online_groceries/app/modules/sign_in/bindings/sign_in_binding.dart';
import 'package:online_groceries/app/modules/sign_in/views/sign_in_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBORDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBORDING,
      page: () => OnbordingView(),
      binding: OnbordingBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
  ];
}
