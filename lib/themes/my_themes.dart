// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class MyThemes {
  static MyThemes of(BuildContext context) {
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color primaryBtnText;
  late Color lineColor;
  late Color customColor1;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends MyThemes {
  late Color primaryColor = const Color(0xFF3c55b7);
  late Color secondaryColor = const Color(0xFFF27121);
  late Color tertiaryColor = const Color(0xFF04747A);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF101213);
  late Color secondaryText = const Color(0xFF57636C);

  late Color primaryBtnText = const Color(0xFFFFFFFF);
  late Color lineColor = const Color(0xFFE0E3E7);
  late Color customColor1 = const Color(0xFF2FB73C);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get bodyText1Family;
  TextStyle get bodyText1;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final MyThemes theme;

  String get title1Family => 'Poppins';
  TextStyle get title1 => GoogleFonts.poppins(
        color: theme.primaryBackground,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      );
  String get subtitle1Family => 'Poppins';
  TextStyle get subtitle1 => GoogleFonts.poppins(
        color: theme.primaryText,
        fontWeight: FontWeight.w400,
        fontSize: 15,
      );
  String get bodyText1Family => 'Poppins';
  TextStyle get bodyText1 => GoogleFonts.poppins(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      copyWith(
        fontFamily: fontFamily,
        color: color,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        decoration: decoration,
        height: lineHeight,
      );
}
