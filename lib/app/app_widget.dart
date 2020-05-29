import 'package:flutter/material.dart';
import 'package:flutterando_semana_do_flutter/app/controllers/app_controller.dart';

import 'pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.themeSwitcher,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: isDark ? Brightness.dark : Brightness.light,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
