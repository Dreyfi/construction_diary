import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstructionDiaryLight {
  static const primaryColor = Color(0xFF97D600);
  static const secondaryColor = Color(0xFF09101D);
  static const textColor = Color.fromARGB(174, 0, 0, 0);
  static const textColorLight = Color.fromARGB(148, 24, 24, 24);
  static const borderColorLight = Color.fromARGB(32, 24, 24, 24);
  static const textColorDefault = Color(0xFF09101D);
  static const bodyColor = Color(0xFFffffff);
  static const canvasColor = Color(0xFFF1F5F7);
  static const neutralBlack = secondaryColor;

  static const bodyMedium = TextStyle(
    color: textColor,
    fontSize: 16,
    height: 1.4,
    fontWeight: FontWeight.w600,
  );

  static const bodyMedium2 = TextStyle(
    color: textColor,
    fontSize: 16,
    height: 1.4,
    fontWeight: FontWeight.w400,
  );

  static const bodySmall = TextStyle(
    color: textColor,
    fontSize: 14,
    height: 1.4,
    fontWeight: FontWeight.w600,
  );

  static const bodyLarge = TextStyle(
    color: textColorDefault,
    fontSize: 18,
    height: 1.4,
    fontWeight: FontWeight.w400,
  );

  static const bodyLarge2 = TextStyle(
    color: textColorDefault,
    fontSize: 23,
    height: 1.4,
    fontWeight: FontWeight.w600,
  );

  static const labelSmall = TextStyle(
    color: textColor,
    fontSize: 14,
    height: 1.4,
    fontWeight: FontWeight.w400,
  );

  static const labelLarge = TextStyle(
    color: textColor,
    fontSize: 14,
    height: 1.4,
    fontWeight: FontWeight.w600,
  );

  static const titleLarge = TextStyle(
    color: textColorDefault,
    fontSize: 32,
    height: 1.4,
    fontWeight: FontWeight.w600,
  );

  static const titleMedium = TextStyle(
    color: textColorDefault,
    fontSize: 29,
    height: 1.4,
    fontWeight: FontWeight.w600,
  );

  static const titleSmall = TextStyle(
    color: textColorDefault,
    fontSize: 26,
    height: 1.4,
    fontWeight: FontWeight.w600,
  );

  static const displayLarge = TextStyle(
    color: textColorDefault,
    fontSize: 60,
    height: 1.4,
    fontWeight: FontWeight.w400,
  );

  static const buttonTextStyle = TextStyle(
    color: bodyColor,
    fontSize: 18,
    height: 1.4,
    fontWeight: FontWeight.w600,
  );

  static const enabledInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: borderColorLight),
  );

  static const defaultInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: borderColorLight),
  );

  static ThemeData buildTheme(BuildContext context) {
    return ThemeData(
        primaryColor: primaryColor,
        primaryColorDark: secondaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryIconTheme: const IconThemeData(
          color: bodyColor,
        ),
        splashColor: bodyColor,
        scaffoldBackgroundColor: bodyColor,
        indicatorColor: primaryColor,
        unselectedWidgetColor: primaryColor,
        canvasColor: canvasColor,
        checkboxTheme: CheckboxThemeData(
            side: MaterialStateBorderSide.resolveWith(
                (_) => const BorderSide(width: 1, color: primaryColor)),
            fillColor: MaterialStateProperty.all(primaryColor),
            checkColor: MaterialStateProperty.all(bodyColor)),
        inputDecorationTheme: const InputDecorationTheme(
            focusedBorder: enabledInputBorder,
            enabledBorder: defaultInputBorder,
            focusedErrorBorder: enabledInputBorder,
            errorBorder: enabledInputBorder,
            border: defaultInputBorder,
            labelStyle: bodyMedium2,
            contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16)),
        appBarTheme: const AppBarTheme(
          color: primaryColor,
        ),
        cardTheme: const CardTheme(
            color: bodyColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: borderColorLight,
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            )),
        snackBarTheme: const SnackBarThemeData(
            backgroundColor: neutralBlack,
            contentTextStyle: TextStyle(color: bodyColor)),
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.sourceSansPro(textStyle: bodyLarge),
          bodyMedium: GoogleFonts.sourceSansPro(textStyle: bodyMedium),
          bodySmall: GoogleFonts.sourceSansPro(textStyle: bodySmall),
          titleLarge: GoogleFonts.sourceSansPro(textStyle: titleLarge),
          titleMedium: GoogleFonts.sourceSansPro(textStyle: titleMedium),
          titleSmall: GoogleFonts.sourceSansPro(textStyle: titleSmall),
          displayLarge: GoogleFonts.pacifico(textStyle: displayLarge),
          labelLarge: GoogleFonts.sourceSansPro(textStyle: labelLarge),
          labelSmall: GoogleFonts.sourceSansPro(textStyle: labelSmall),
        ),
        colorScheme: const ColorScheme.light(
            primary: primaryColor, secondary: secondaryColor));
  }
}
