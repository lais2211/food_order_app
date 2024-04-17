import 'package:get_it/get_it.dart';
import 'package:restaurante_app/src/modules/view/controllers/cart_controller.dart';
import 'package:restaurante_app/src/modules/view/controllers/food_page_controller.dart';
import 'package:restaurante_app/src/modules/view/controllers/login_page_controller.dart';
import 'package:restaurante_app/src/modules/view/controllers/payment_page_controller.dart';
import 'package:restaurante_app/src/modules/view/controllers/register_page_controller.dart';

import '../modules/view/controllers/home_page_controller.dart';
import '../modules/view/controllers/login_or_register_controller.dart';

void registerDependencies() {
  GetIt.I.registerSingleton<LoginPageController>(LoginPageController());
  GetIt.I.registerSingleton<RegisterPageController>(RegisterPageController());
  GetIt.I.registerSingleton<LoginOrRegisterController>(
      LoginOrRegisterController());
  GetIt.I.registerSingleton<HomePageController>(HomePageController());
  GetIt.I.registerSingleton<FoodPageController>(FoodPageController());
  GetIt.I.registerSingleton<PaymentPageController>(PaymentPageController());
  GetIt.I.registerSingleton<CartController>(CartController());
}
