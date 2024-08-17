import 'package:earning_fish_machine_task/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemTheme {
  static void change(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.lightWhite,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.white,
      ),
    );
  }
}

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.lightWhite,
    );
  }
}
