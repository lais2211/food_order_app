import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:restaurante_app/src/modules/data/services/auth/auth_service.dart';

part 'login_page_controller.g.dart';

class LoginPageController = _LoginPageControllerBase with _$LoginPageController;

abstract class _LoginPageControllerBase with Store {
  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  @action
  void clearControllers() {
    emailController.clear();
    passwordController.clear();
  }

  @action
  Future<void> login(context) async {
    final _authService = AuthService();
    try {
      await _authService.signInWithEmailAndPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }
}
