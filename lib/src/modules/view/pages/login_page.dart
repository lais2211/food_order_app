import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurante_app/src/modules/view/components/login_button.dart';
import 'package:restaurante_app/src/modules/view/components/login_text_field.dart';

import '../../l10n/text_l10n_pt.dart';

class LoginPage extends StatefulWidget {

  final Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

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
              controller: emailController,
              hintText: text.email,
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            LoginTextField(
              controller: passwordController,
              hintText: text.password,
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            LoginButton(
              text: text.loginButton,
              onTap: () {},
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
                  onTap:widget.onTap,
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
