
import 'package:ecommerce_application/utils/constants/colors.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class TTermsAndConditions extends StatelessWidget {
  const TTermsAndConditions({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 24.0, width: 24.0,
          child: Checkbox(value: true, onChanged: (value){})),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Text.rich(TextSpan(children: [
            TextSpan(text: '  ${TTexts.iAgreeTo}  ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: TTexts.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? TColors.white : TColors.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? TColors.white : TColors.primary,
            )),
            TextSpan(text: '  ${TTexts.and}  ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: TTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? TColors.white : TColors.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? TColors.white : TColors.primary,
            )),
          ]))
      ],
    );
  }
}