import 'package:flutter/material.dart';
import 'package:flutterando_semana_do_flutter/app/controllers/app_controller.dart';

class CustomSwitchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.themeSwitcher.value,
      onChanged: (value) {
        AppController.instance.changeTheme(value);
      },
    );
  }
}
