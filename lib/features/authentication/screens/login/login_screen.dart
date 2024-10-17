import "package:ecommerce_application/common/styles/spacing_styles.dart";
import "package:ecommerce_application/common/widgets/login_sign_up/form_divider.dart";
import "package:ecommerce_application/common/widgets/login_sign_up/form_header_widget.dart";
import "package:ecommerce_application/common/widgets/login_sign_up/form_social_media_logins.dart";
import "package:ecommerce_application/common/widgets/login_sign_up/formfelds_widgets.dart";
import "package:ecommerce_application/utils/constants/sizes.dart";
import "package:ecommerce_application/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TFormHeader(dark: dark),
               // Form
              const TFormFieldSection(),

            // Divider
            TFormDivider(dark: dark),
             const SizedBox(height: TSizes.spaceBtwSections,),

            // Footer
            const TFormSocialMediaIcons()

            ],
          )),

         
      ),
    );
  }
}



