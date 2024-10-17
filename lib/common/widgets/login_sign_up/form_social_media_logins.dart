
import 'package:ecommerce_application/utils/constants/colors.dart';
import 'package:ecommerce_application/utils/constants/image_strings.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TFormSocialMediaIcons extends StatelessWidget {
  const TFormSocialMediaIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){}, icon: const Image(width: TSizes.md, height: TSizes.md, image: AssetImage(TImages.google))),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){}, icon: const Image(width: TSizes.md, height: TSizes.md, image: AssetImage(TImages.facebook))),
        ),
      
    ],);
  }
}
