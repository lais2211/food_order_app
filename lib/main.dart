import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurante_app/src/modules/data/models/restaurant_model.dart';
import 'package:restaurante_app/src/theme/theme_provider.dart';

import 'my_app.dart';
import 'src/config/system.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      ],
      child: const MyApp(),
    ),
  );
}
