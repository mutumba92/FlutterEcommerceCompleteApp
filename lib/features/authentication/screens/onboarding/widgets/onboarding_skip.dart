import 'package:ecommerce_application/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardinSkip extends StatelessWidget {
  const OnBoardinSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: TDeviceUtils.getAppBarHeight(), right: TSizes.defaultSpace,child: TextButton(onPressed: ()=> OnBoardingController.instance.skipPage(), child: const Text("Skip"),));
  }
}