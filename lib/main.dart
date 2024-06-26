import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurante_app/firebase_options.dart';
import 'package:restaurante_app/src/modules/data/models/restaurant_model.dart';
import 'package:restaurante_app/src/modules/view/controllers/cart_controller.dart';
import 'package:restaurante_app/src/modules/view/controllers/food_page_controller.dart';
import 'package:restaurante_app/src/theme/theme_provider.dart';
import 'my_app.dart';
import 'src/config/system.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  System.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Restaurant(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartController(),
        ),
        ChangeNotifierProvider(
          create: (context) => FoodPageController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
