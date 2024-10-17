import 'package:ecommerce_application/common/widgets/login_sign_up/form_divider.dart';
import 'package:ecommerce_application/common/widgets/login_sign_up/form_social_media_logins.dart';
import 'package:ecommerce_application/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/constants/text_strings.dart';
import 'package:ecommerce_application/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title 
            Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwSections),

            // form
            TFormSignUp(dark: dark),
            const SizedBox(height: TSizes.spaceBtwSections,),
            // form divider
            TFormDivider(dark: dark),

            // social buttons or footer
            const SizedBox(height: TSizes.spaceBtwSections,),
            const TFormSocialMediaIcons()
            
          ],
        ),
        ),
        
      ),
    );
  }
}
