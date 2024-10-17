
import 'package:ecommerce_application/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_application/features/authentication/screens/signup/widgets/signup_terms_and_conditions.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TFormSignUp extends StatelessWidget {
  const TFormSignUp({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Row(
          children: [
    
            // without Expanded you will get abound related error
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.firstName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields,),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        // username
        TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
              ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        //email
        TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
              ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        // phone number
        TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
              ),   
        const SizedBox(height: TSizes.spaceBtwInputFields,),            
        // password 
        TextFormField(
                obscureText:true ,
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.password_check), suffixIcon: Icon(Iconsax.eye_slash)),
              ),   
        const SizedBox(height: TSizes.spaceBtwSections,), 
    
        // Terms & Conditions CheckBox
        TTermsAndConditions(dark: dark),
        const SizedBox(height: TSizes.spaceBtwItems,),
        SizedBox( width: double.infinity,
          child: ElevatedButton(onPressed: () => Get.to(()=> const EmailVerifcationScreen()), child: const Text(TTexts.createAccount)),)
    
      ],
    ));
  }
}
