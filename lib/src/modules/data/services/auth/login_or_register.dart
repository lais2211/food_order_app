import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import '../../../view/controllers/login_or_register_controller.dart';
import '../../../view/pages/login_page.dart';
import '../../../view/pages/register_page.dart';

class LoginOrRegister extends StatelessWidget {
  const LoginOrRegister({super.key});

  @override
  Widget build(BuildContext context) {
    LoginOrRegisterController controller = GetIt.I();
    return Observer(
      builder: (_) {
        if (controller.showLoginPage) {
          return LoginPage(
            onTap: controller.togglePages,
          );
        } else {
          return RegisterPage(
            onTap: controller.togglePages,
          );
        }
      },
    );
  }
}
