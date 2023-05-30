import 'package:ejara_growth_dsa/styles/font_size.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle appTiitle(
      {Color? color, double? fontSize = AppFontSize.card_name, String? fontFamily= 'Circular-Std'}) {
    return TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal);
  }

  static TextStyle ejara({Color? color}) {
    return TextStyle(
        color: color,
        fontFamily: 'Rez',
        fontSize: 36,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal);
  }

  static TextStyle titleH1({Color? color, double? size, String? fontFamily,FontWeight?fontWeight }) {
    return TextStyle(
        color: color,
        fontFamily: fontFamily??'Nunito',
        fontSize: size??26,
        fontWeight: fontWeight??FontWeight.w800,
        fontStyle: FontStyle.normal);
  }

  static TextStyle subTitle({Color? color, double? fontSize= 16, FontWeight?fontWeight }) {
    return TextStyle(

        color: color,
        fontFamily: 'Nunito',
        fontSize: fontSize,
        fontWeight: fontWeight??FontWeight.w400,
        fontStyle: FontStyle.normal);
  }

  static TextStyle fieldLabel({Color? color}) {
    return TextStyle(
        height: AppFontSize.inputLabel/17,
        color: color,
        fontFamily: 'Nunito',
        fontSize: AppFontSize.inputLabel,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal);
  }

  static TextStyle fieldplaceholder(
      {Color? color, double size = AppFontSize.inputLabel}) {
    return TextStyle(
        color: color,
        fontFamily: 'Nunito',
        fontSize: size,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal);
  }

  static TextStyle customButton(
      {Color? color, double size = 20}) {
    return TextStyle(
        color: color,
        fontFamily: 'Nunito',
        fontSize: size,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal);
  }
}
