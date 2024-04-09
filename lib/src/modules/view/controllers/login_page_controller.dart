import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../pages/home_page.dart';

part 'login_page_controller.g.dart';

class LoginPageController = _LoginPageControllerBase
    with _$LoginPageController;

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
  void login(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),),);
  }
}