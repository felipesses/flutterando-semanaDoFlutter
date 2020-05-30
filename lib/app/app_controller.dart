import 'package:flutter/cupertino.dart';
import 'package:flutterando_semana_do_flutter/app/models/app_config_model.dart';

class AppController {
  static final AppController instance = AppController._();

  AppController._(); // construtor privado

  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitcher.value;
  ValueNotifier<bool> get themeSwitcher => config.themeSwitcher;

  changeTheme(bool value) {
    themeSwitcher.value = value;
  }
}
