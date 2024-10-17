import "package:ecommerce_application/utils/constants/sizes.dart";
import "package:flutter/material.dart";

class TSpacingStyle {

  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    left: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
    top: TSizes.appBarHeight,
    bottom: TSizes.defaultSpace

  );
}