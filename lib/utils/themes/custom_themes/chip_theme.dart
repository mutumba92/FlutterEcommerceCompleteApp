import "package:flutter/material.dart";

class TChipTheme {
  
  TChipTheme._();

  // -- light mode --
  static ChipThemeData lightModeCipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white
  );



  // -- dark mode ---
  static ChipThemeData darkModeCipTheme = ChipThemeData(
  disabledColor: Colors.grey.withOpacity(0.4),
  labelStyle: const TextStyle(color: Colors.white),
  selectedColor: Colors.blue,
  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
  checkmarkColor: Colors.white
  );
}


