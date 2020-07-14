import 'package:flutter/cupertino.dart';
import 'package:flutterarchiteture/app/interfaces/local_storage_interface.dart';
import 'package:flutterarchiteture/app/models/app_config_model.dart';
import 'package:flutterarchiteture/app/services/shared_local_storage_service.dart';
import 'package:flutterarchiteture/app/viewModels/change_theme_viewmodel.dart';

class AppController {
  static final AppController instance = AppController._();

  AppController._() {
    changeThemeViewModel.init();
  }

  final ILocalStorage storage = new SharedLocalStorageService();

  final ChangeThemeViewModel changeThemeViewModel =
      new ChangeThemeViewModel(SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;

  ValueNotifier<bool> get themeSwitch =>
      changeThemeViewModel.config.themeSwitch;
}
