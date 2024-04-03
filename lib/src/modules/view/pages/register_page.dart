import 'package:flutter/material.dart';

import '../../l10n/text_l10n_pt.dart';
import '../components/login_button.dart';
import '../components/login_text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

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
            LoginTextField(
              controller: confirmPasswordController,
              hintText: text.confirmPassword,
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),
            LoginButton(
              text: text.registerMember,
              onTap: () {},
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
