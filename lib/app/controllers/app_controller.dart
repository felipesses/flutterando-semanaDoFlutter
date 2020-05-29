import 'package:flutter/foundation.dart';

class AppController {
  static final AppController instance = AppController._();

  AppController._(); // construtor privado

  final themeSwitcher = ValueNotifier<bool>(false);

  changeTheme(bool value) {
    themeSwitcher.value = value;
  }
}
