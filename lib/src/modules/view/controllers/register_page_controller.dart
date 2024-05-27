import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:restaurante_app/src/modules/data/services/auth/auth_service.dart';

part 'register_page_controller.g.dart';

class RegisterPageController = _RegisterPageControllerBase
    with _$RegisterPageController;

abstract class _RegisterPageControllerBase with Store {
  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  @observable
  TextEditingController confirmPasswordController = TextEditingController();

  @action
  void clearControllers() {
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  @action
  Future<void> register(context) async {
    final _authService = AuthService();

    if (passwordController.text == confirmPasswordController.text) {
      try {
        await _authService.signUpWithEmailAndPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Senha incorreta!'),
        ),
      );
    }
  }
}
