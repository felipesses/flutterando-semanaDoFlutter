import 'package:flutterando_semana_do_flutter/app/interfaces/local_storage_interface.dart';
import 'package:flutterando_semana_do_flutter/app/models/app_config_model.dart';

class ChangeThemeViewModel {
  final ILocalStorage storage;

  final AppConfigModel config = AppConfigModel();

  ChangeThemeViewModel({this.storage});

  Future init() async {
    await storage.get('isDark').then((value) {
      if (value != null) config.themeSwitcher.value = value;
    });
  }

  changeTheme(bool value) {
    config.themeSwitcher.value = value;
    storage.put('isDark', value);
  }
}
