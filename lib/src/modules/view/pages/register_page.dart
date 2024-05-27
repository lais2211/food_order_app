import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurante_app/src/modules/view/controllers/register_page_controller.dart';

import '../../l10n/text_l10n_pt.dart';
import '../components/main_button.dart';
import '../components/login_text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterPageController controller = GetIt.I();

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
              text.createAccount,
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
            LoginTextField(
              controller: controller.confirmPasswordController,
              hintText: text.confirmPassword,
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),
            MainButton(
              text: text.registerMember,
              onTap: () {
                controller.register(context);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  text.haveAccount,
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
                    text.login,
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
