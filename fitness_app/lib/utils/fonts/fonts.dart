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

  static TextStyle get bText => const TextStyle(
        fontFamily: primaryFont,
        fontSize: sizeB,
        fontWeight: regular,
        color: FitTheme.whiteText,
      ); 

  static TextStyle get bTextBlck => const TextStyle(
        fontFamily: primaryFont,
        fontSize: sizeB,
        fontWeight: regular,
        color: FitTheme.blackText,
      );        

  static TextStyle get cText => const TextStyle(
        fontFamily: primaryFont,
        fontSize: sizeC,
        fontWeight: regular,
        color: FitTheme.whiteText,
      );
  
    static TextStyle get dText => const TextStyle(
        fontFamily: primaryFont,
        fontSize: sizeD,
        fontWeight: regular,
        color: FitTheme.whiteText,
      );

  static TextStyle get eText => const TextStyle(
        fontFamily: primaryFont,
        fontSize: sizeE,
        fontWeight: regular,
        color: FitTheme.whiteText,
      );

    static TextStyle get eTextfade1 => TextStyle(
      fontFamily: primaryFont,
      fontSize: sizeE,
      fontWeight: regular,
      color: FitTheme.whiteText.withOpacity(0.5),
      );

    static TextStyle get eTextfade2 => TextStyle(
      fontFamily: primaryFont,
      fontSize: sizeE,
      fontWeight: regular,
      color: FitTheme.whiteText.withOpacity(0.8),
      );  
    
  static TextStyle get fText => const TextStyle(
        fontFamily: primaryFont,
        fontSize: sizeF,
        fontWeight: regular,
        color: FitTheme.whiteText,
      );

  static TextStyle get fTextBlck => const TextStyle(
        fontFamily: primaryFont,
        fontSize: sizeF,
        fontWeight: regular,
        color: FitTheme.blackText,
      );    

}
