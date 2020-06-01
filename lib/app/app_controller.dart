import 'package:flutter/cupertino.dart';
import 'package:flutterando_semana_do_flutter/app/interfaces/local_storage_interface.dart';
import 'package:flutterando_semana_do_flutter/app/models/app_config_model.dart';
import 'package:flutterando_semana_do_flutter/app/services/shared_local_storage_service.dart';

class AppController {
  static final AppController instance = AppController._();

  AppController._() {
    localStorage.get('isDark').then((value) {
      if (value != null) config.themeSwitcher.value = value;
    });
  }

  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitcher.value;
  ValueNotifier<bool> get themeSwitcher => config.themeSwitcher;

  final ILocalStorage localStorage = SharedLocalStorageService();

  changeTheme(bool value) {
    config.themeSwitcher.value = value;
    localStorage.put('isDark', value);
  }
}
