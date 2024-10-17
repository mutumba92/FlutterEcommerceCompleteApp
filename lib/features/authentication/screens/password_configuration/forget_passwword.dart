import "package:ecommerce_application/common/styles/spacing_styles.dart";
import "package:ecommerce_application/features/authentication/screens/password_configuration/reset_password.dart";
import "package:ecommerce_application/utils/constants/sizes.dart";
import "package:ecommerce_application/utils/constants/text_strings.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight,
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),

            Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwSections * 2,), 

            // Text field - input
            TextFormField(
              decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
            ),

            const SizedBox(height: TSizes.spaceBtwSections,),
            SizedBox(width: double.infinity, 
            child: ElevatedButton(onPressed: ()=> Get.to(() => const ResetPassword()), child: const Text(TTexts.submit)),
            )
          ],
        ),
        ),
      ),
    );
  }
}