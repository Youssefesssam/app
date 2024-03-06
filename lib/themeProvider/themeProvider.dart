import 'package:ch/ui/utilites/appPic.dart';
import 'package:ch/ui/utilites/appcolor.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentMode =ThemeMode.light;
  toggleTheme(bool darkThemeSwich)
  {
    currentMode=darkThemeSwich?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }
AssetImage get background =>
    currentMode ==ThemeMode.light?AssetImage(AppPic.BackgroundLight) :
    AssetImage(AppPic.BackgroundBlack);

  Color get colmn =>
      currentMode ==ThemeMode.light?AppColors.primiary4: AppColors.primiary;

  Color get row =>
      currentMode ==ThemeMode.light?AppColors.primiary: AppColors.primiary4;
}