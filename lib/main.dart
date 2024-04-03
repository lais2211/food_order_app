import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurante_app/src/theme/theme_provider.dart';

import 'my_app.dart';
import 'src/config/system.dart';

void main() {
  System.init();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}
