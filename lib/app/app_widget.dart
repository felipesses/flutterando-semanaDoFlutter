import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.themeSwitcher,
      builder: (context, isDart, child) {
        return MaterialApp(
          title: 'Semana do Flutter',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            brightness: isDart ? Brightness.dark : Brightness.light,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
