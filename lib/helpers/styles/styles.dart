import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static InputDecoration inputFieldDecoration(
      String hintText, BuildContext context,
      {Widget? suffixIcon}) {
    return InputDecoration(
      hintText: hintText,
      suffixIcon: suffixIcon,
      errorStyle: boldStyle(fontSize: 12, color: AppColor.red),
      errorBorder: InputBorder.none,
      errorMaxLines: 1,
      focusedErrorBorder: InputBorder.none,
      hintStyle: const TextStyle(color: AppColor.lightGrey),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Theme.of(context).colorScheme.onPrimary,
      )),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Theme.of(context).colorScheme.onPrimary,
      )),
    );
  }

  static TextStyle boldStyle({required double fontSize, required Color color}) {
    return GoogleFonts.nunito(
      fontWeight: FontWeight.w800,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle semiBoldStyle(
      {required double fontSize, required Color color}) {
    return GoogleFonts.nunito(
      fontWeight: FontWeight.w700,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle mediumStyle(
      {required double fontSize, required Color color}) {
    return GoogleFonts.nunito(
      fontWeight: FontWeight.w600,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle semiMediumStyle(
      {required double fontSize, required Color color}) {
    return GoogleFonts.nunito(
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle lightStyle(
      {required double fontSize, required Color color}) {
    return GoogleFonts.nunito(
      fontWeight: FontWeight.w300,
      fontSize: fontSize,
      color: color,
    );
  }

  static ColorScheme scheme(BuildContext context) {
    return Theme.of(context).colorScheme;
  }
}
