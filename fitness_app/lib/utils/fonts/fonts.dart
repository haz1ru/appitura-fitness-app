import 'package:fitness_app/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class Fonts {
  static const String primaryFont = 'Alatsi';
  static const FontWeight regular = FontWeight.w400;

  // Font sizes
  static const double sizeA = 32.0;
  static const double sizeB = 20.0;
  static const double sizeC = 16.0;
  static const double sizeD = 15.0;
  static const double sizeE = 12.0;
  static const double sizeF = 10.0;

  // Text styles
  static TextStyle get aText => const TextStyle(
        fontFamily: primaryFont,
        fontSize: sizeA,
        fontWeight: regular,
        color: FitTheme.whiteText,
      );

  static TextStyle get dText => const TextStyle(
        fontFamily: primaryFont,
        fontSize: sizeD,
        fontWeight: regular,
        color: FitTheme.whiteText,
      );

  
}
