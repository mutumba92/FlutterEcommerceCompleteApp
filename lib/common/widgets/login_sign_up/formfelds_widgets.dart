
import 'package:ecommerce_application/features/authentication/screens/password_configuration/forget_passwword.dart';
import 'package:ecommerce_application/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TFormFieldSection extends StatelessWidget {
  const TFormFieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            const SizedBox(height: TSizes.sm,),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon:  Icon(Iconsax.direct_right),
                labelText: TTexts.email 
              ),
            ),
        
            // Password
        const SizedBox(height: TSizes.spaceBtwInputFields,),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon:  Icon(Iconsax.password_check),
                labelText: TTexts.password ,
                suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2,),
        
            // Remember Me and forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                // Remember Me
                Row(
                  
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(TTexts.rememberMe)
                  ],
                ),
              // Forgot password
               TextButton(onPressed: ()=> Get.to(() => const ForgotPasswordScreen()), child: const Text(TTexts.forgetPassword))
        
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),
        
            // Log In and Sign In Buttons
            // Log In
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.signIn))),
        
            const SizedBox(height: TSizes.spaceBtwItems,),
        
            // Sign Up
            SizedBox(width: double.infinity,child: OutlinedButton(onPressed: ()=> Get.to(()=> const SignUpScreen())
            , child: const Text(TTexts.createAccount))),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),);
  }
}