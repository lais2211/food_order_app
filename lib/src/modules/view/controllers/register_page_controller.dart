import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

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
}