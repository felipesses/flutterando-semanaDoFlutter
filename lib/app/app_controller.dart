import 'package:flutter/cupertino.dart';
import 'package:flutterando_semana_do_flutter/app/services/shared_local_storage_service.dart';
import 'package:flutterando_semana_do_flutter/app/viewmodels/change_theme_viewmodel.dart';

class AppController {
  static final AppController instance = AppController._();

  AppController._() {
    changeThemeViewModel.init();
  }

  final ChangeThemeViewModel changeThemeViewModel =
      ChangeThemeViewModel(storage: SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.themeSwitcher.value;
  ValueNotifier<bool> get themeSwitcher =>
      changeThemeViewModel.config.themeSwitcher;
}
