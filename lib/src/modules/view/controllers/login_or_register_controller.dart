import 'package:mobx/mobx.dart';

part 'login_or_register_controller.g.dart';

class LoginOrRegisterController = _LoginOrRegisterControllerBase
    with _$LoginOrRegisterController;

abstract class _LoginOrRegisterControllerBase with Store {
  @observable
  bool showLoginPage = true;

  @action
  void togglePages() {
    showLoginPage = !showLoginPage;
  }
}