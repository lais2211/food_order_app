import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurante_app/src/modules/view/components/main_button.dart';
import 'package:restaurante_app/src/modules/view/components/login_text_field.dart';

import '../../l10n/text_l10n_pt.dart';
import '../controllers/login_page_controller.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginPageController controller = GetIt.I();
  final TextL10nPt text = TextL10nPt();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant_menu,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              text.loginTitle,
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            LoginTextField(
              controller: controller.emailController,
              hintText: text.email,
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            LoginTextField(
              controller: controller.passwordController,
              hintText: text.password,
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            MainButton(
              text: text.loginButton,
              onTap: () {
                controller.login(context);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  text.notMember,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    text.registerMember,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
