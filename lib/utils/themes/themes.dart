// Here we set reusable themes to be reused throughout the project and can be reused in other projects


import "package:ecommerce_application/utils/themes/custom_themes/app_bar_theme.dart";
import "package:ecommerce_application/utils/themes/custom_themes/bottom_sheet_theme.dart";
import "package:ecommerce_application/utils/themes/custom_themes/check_box_theme.dart";
import "package:ecommerce_application/utils/themes/custom_themes/chip_theme.dart";
import "package:ecommerce_application/utils/themes/custom_themes/elevated_button_theme.dart";
import "package:ecommerce_application/utils/themes/custom_themes/outline_button_theme.dart";
import "package:ecommerce_application/utils/themes/custom_themes/text_themes.dart";
import "package:ecommerce_application/utils/themes/text_field_theme.dart";
import "package:flutter/material.dart";

class TAppTheme {

  TAppTheme._();

  static final lightMode = ThemeData(
    useMaterial3: true,
    // fontFamily: 'Poppins'
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightModeCipTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightModeElevatedButton,
    bottomSheetTheme: TBotttomSheet.lightModeBottomSheet,
    outlinedButtonTheme: TOutlineButtonTheme.lightModeOutlinedButtonTheme,
    checkboxTheme: TCheckBoxTheme.lightModeCheckBox,
    inputDecorationTheme: TTextFieldTheme.lightModeTextFieldTheme,
    appBarTheme: TAppBarTheme.lightModeAppBar,
   



  );
  static final darkMode = ThemeData(
    useMaterial3: true,
    // fontFamily: 'Poppins'
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkModeCipTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkModeElevatedButton,
    bottomSheetTheme: TBotttomSheet.darkModeBottomSheet,
    outlinedButtonTheme: TOutlineButtonTheme.darkModeOutlinedButtonTheme,
    checkboxTheme: TCheckBoxTheme.darkModeCheckBox,
    inputDecorationTheme: TTextFieldTheme.darktModeTextFieldTheme,
    appBarTheme: TAppBarTheme.darkModeAppBar,
  );
}