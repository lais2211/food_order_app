import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurante_app/src/modules/data/services/auth/login_or_register.dart';
import 'package:restaurante_app/src/theme/theme_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
