import 'package:get_it/get_it.dart';
import 'package:restaurante_app/src/modules/view/controllers/login_page_controller.dart';
import 'package:restaurante_app/src/modules/view/controllers/register_page_controller.dart';

import '../modules/view/controllers/home_page_controller.dart';
import '../modules/view/controllers/login_or_register_controller.dart';

void registerDependencies() {
  GetIt.I.registerSingleton<LoginPageController>(LoginPageController());
  GetIt.I.registerSingleton<RegisterPageController>(RegisterPageController());
  GetIt.I.registerSingleton<LoginOrRegisterController>(
      LoginOrRegisterController());
  GetIt.I.registerSingleton<HomePageController>(HomePageController());
}
