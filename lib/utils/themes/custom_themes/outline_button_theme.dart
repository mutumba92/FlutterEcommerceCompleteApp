import "package:ecommerce_application/utils/themes/custom_themes/text_themes.dart";
import "package:flutter/material.dart";


class TOutlineButtonTheme {

  TOutlineButtonTheme._();

  
  static final lightModeOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      textStyle: TTextTheme.lightTextTheme.titleLarge,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0))
    )
  );


    static final darkModeOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.blueAccent),
      textStyle: TTextTheme.lightTextTheme.titleLarge,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0))
    )
    );
}