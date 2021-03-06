import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IngenioColors {
  //note: remember after "0xFF" FF digits are alpha.
  static const primaryColor = Color(0xFFc85100);
  static const backGroundColor = Color(0xFF121212);
  static const surfaceColor = Color(0xFF262626);
  static const accentColor = Color(0xFFCF6679);
  static const textPrimaryColor = Color(0xFFFFFFFF);
}

class IngenioFonts {
  ///Heading01 regular
  static final headline1 = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 32,
      color: IngenioColors.textPrimaryColor,
    ),
  );

  ///Body01 regular
  static final body1 = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 13,
      color: IngenioColors.textPrimaryColor,
    ),
  );
}

///Ingenio barber theme
final ingenioBarberDarkThemeData = ThemeData(
  scaffoldBackgroundColor: IngenioColors.backGroundColor,
  colorScheme: const ColorScheme.dark(
    primary: IngenioColors.primaryColor,
    secondary: IngenioColors.accentColor,
    surface: IngenioColors.surfaceColor,
    background: IngenioColors.backGroundColor,
  ),
  textTheme: TextTheme(
    headline1: IngenioFonts.headline1,
    bodyText1: IngenioFonts.body1,
  ),
);
