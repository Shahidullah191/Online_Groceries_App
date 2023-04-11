import 'package:get/get.dart';

import 'package:online_groceries/app/modules/auth/login/bindings/login_binding.dart';
import 'package:online_groceries/app/modules/auth/login/views/login_view.dart';
import 'package:online_groceries/app/modules/auth/number_sign_in/bindings/number_sign_in_binding.dart';
import 'package:online_groceries/app/modules/auth/number_sign_in/views/number_sign_in_view.dart';
import 'package:online_groceries/app/modules/auth/otp/bindings/otp_binding.dart';
import 'package:online_groceries/app/modules/auth/otp/views/otp_view.dart';
import 'package:online_groceries/app/modules/auth/select%20location/bindings/select_location_binding.dart';
import 'package:online_groceries/app/modules/auth/select%20location/views/select_location_view.dart';
import 'package:online_groceries/app/modules/auth/sign_in/bindings/sign_in_binding.dart';
import 'package:online_groceries/app/modules/auth/sign_in/views/sign_in_view.dart';
import 'package:online_groceries/app/modules/auth/signup/bindings/signup_binding.dart';
import 'package:online_groceries/app/modules/auth/signup/views/signup_view.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/account/bindings/account_binding.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/account/views/account_view.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/bottom%20navbar/bindings/bottom_navbar_binding.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/bottom%20navbar/views/bottom_navbar_view.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/explore/bindings/explore_binding.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/explore/views/explore_view.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/favourite/bindings/favourite_binding.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/favourite/views/favourite_view.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/home/bindings/home_binding.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/home/views/home_view.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/my%20cart/bindings/my_cart_binding.dart';
import 'package:online_groceries/app/modules/bottom%20navbar%20pages/my%20cart/views/my_cart_view.dart';
import 'package:online_groceries/app/modules/onbording/bindings/onbording_binding.dart';
import 'package:online_groceries/app/modules/onbording/views/onbording_view.dart';
import 'package:online_groceries/app/modules/product details/bindings/product_details_binding.dart';
import 'package:online_groceries/app/modules/product details/views/product_details_view.dart';

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
    GetPage(
      name: _Paths.EXPLORE,
      page: () => ExploreView(),
      binding: ExploreBinding(),
    ),
    GetPage(
      name: _Paths.MY_CART,
      page: () => MyCartView(),
      binding: MyCartBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE,
      page: () => FavouriteView(),
      binding: FavouriteBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
  ];
}
