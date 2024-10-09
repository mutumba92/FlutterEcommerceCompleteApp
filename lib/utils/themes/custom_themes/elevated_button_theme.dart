import "package:ecommerce_application/utils/themes/custom_themes/text_themes.dart";
import "package:flutter/material.dart";

class TElevatedButtonTheme {

  TElevatedButtonTheme._();

  // --light theme  --

  static final lightModeElevatedButton =  ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: TTextTheme.darkTextTheme.titleLarge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))

    )
  );

  // --- dark theme ---
  static final darkModeElevatedButton = ElevatedButtonThemeData(


      style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: TTextTheme.darkTextTheme.titleLarge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))

    )
  );
}