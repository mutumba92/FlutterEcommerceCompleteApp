import "package:ecommerce_application/features/authentication/screens/onboarding/onboarding_screen.dart";
import "package:ecommerce_application/utils/themes/themes.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application. 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

      home: const OnBoardingScree(),
      
    );
  }
}
