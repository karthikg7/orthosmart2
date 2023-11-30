import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static get bodyMediumBlueA200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueA200,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBluegray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsBluegray800 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray800.withOpacity(0.53),
        fontSize: 12.fSize,
      );
  // Title text style
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlueA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA200,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumCyan600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan600,
      );
  static get titleMediumCyan600Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan600,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray100_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlueA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA200,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallCyan600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyan600,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
