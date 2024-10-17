import 'package:ecommerce_application/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce_application/utils/constants/colors.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/device/device_utility.dart';
import 'package:ecommerce_application/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingNextWidget extends StatelessWidget {
  const OnBoardingNextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? TColors.primary : Colors.black),
        onPressed: ()=> OnBoardingController.instance.nextPage(), child: const Icon(Icons.arrow_right, color: Colors.white,size: 45.0,)));
  }
}