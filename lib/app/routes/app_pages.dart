import 'package:get/get.dart';

import 'package:online_groceries/app/modules/bottom navbar/bindings/bottom_navbar_binding.dart';
import 'package:online_groceries/app/modules/bottom navbar/views/bottom_navbar_view.dart';
import 'package:online_groceries/app/modules/home/bindings/home_binding.dart';
import 'package:online_groceries/app/modules/home/views/home_view.dart';
import 'package:online_groceries/app/modules/number_sign_in/bindings/number_sign_in_binding.dart';
import 'package:online_groceries/app/modules/number_sign_in/views/number_sign_in_view.dart';
import 'package:online_groceries/app/modules/onbording/bindings/onbording_binding.dart';
import 'package:online_groceries/app/modules/onbording/views/onbording_view.dart';
import 'package:online_groceries/app/modules/otp/bindings/otp_binding.dart';
import 'package:online_groceries/app/modules/otp/views/otp_view.dart';
import 'package:online_groceries/app/modules/select location/bindings/select_location_binding.dart';
import 'package:online_groceries/app/modules/select location/views/select_location_view.dart';
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
    GetPage(
      name: _Paths.NUMBER_SIGN_IN,
      page: () => NumberSignInView(),
      binding: NumberSignInBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_LOCATION,
      page: () => SelectLocationView(),
      binding: SelectLocationBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVBAR,
      page: () => BottomNavbarView(),
      binding: BottomNavbarBinding(),
    ),
  ];
}
