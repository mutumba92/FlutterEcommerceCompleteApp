import 'package:ecommerce_application/common/widgets/login_sign_up/success_screen.dart';
import 'package:ecommerce_application/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce_application/utils/constants/image_strings.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/constants/text_strings.dart';
import 'package:ecommerce_application/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerifcationScreen extends StatelessWidget {
  const EmailVerifcationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.offAll(()=> const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Image
            Image(image: const AssetImage(TImages.deliveredEmailIllustration,) ,width: THelperFunctions.screenWidth() * 0.6,), 
            const SizedBox(height: TSizes.spaceBtwSections,), 
            // Tittle & Sub Tittle
            Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,), 

            Text('mutumba@qq.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,), 

            Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwSections,), 

            // Buttons
            SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: ()=> Get.offAll(()=> SuccessScreen(
              onPressed: () => Get.to(() => const LoginScreen()),
              title: TTexts.yourAccountCreatedTitle,
              subtitle: TTexts.yourAccountCreatedSubTitle,
              image: TImages.staticSuccessIllustration,
            )), child: const Text(TTexts.tContinue)),
            ),
            const SizedBox(height: TSizes.spaceBtwItems,), 
                        SizedBox(width: double.infinity,
            child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail)),
            ),


          ],
        ),
        ),
      ),
    );
  }
}