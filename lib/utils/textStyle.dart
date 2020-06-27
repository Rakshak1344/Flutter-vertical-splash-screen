import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gstore/utils/myColors.dart';

class TextStyles {
  TextStyles._();

  static final TextStyle appNameTextStyle = GoogleFonts.ubuntu(
    textStyle: TextStyle(
      color: MyColors.appTextColor,
      letterSpacing: 1.3,
      fontWeight: FontWeight.w600,
    ),
  );
}
