import "package:ecommerce_application/common/styles/spacing_styles.dart";
import "package:ecommerce_application/utils/constants/sizes.dart";
import "package:ecommerce_application/utils/constants/text_strings.dart";
import "package:ecommerce_application/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";


// ignore: must_be_immutable
class SuccessScreen extends StatelessWidget {
  SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image , title , subtitle;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
     //  appBar: AppBar(),
     body: SingleChildScrollView(
      child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight * 2,
      child: Column(
        children: [
            // Image
            Image(image: AssetImage(image) ,width: THelperFunctions.screenWidth() * 0.6,), 
            const SizedBox(height: TSizes.spaceBtwSections,), 
            // Tittle & Sub Tittle
            Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),

            Text(subtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwSections,), 

            // Button
            SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: onPressed, child: const Text(TTexts.tContinue)),
            )

        ],
      ),
      ),
     ),
    );
  }
}