import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class CustomTextStyle {
  static final TextStyle buttonTextStyle = GoogleFonts.poppins(
    color: Appcolor.primaryColor,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle buttonTextStyle1 = GoogleFonts.poppins(
    color: Appcolor.primaryColor,
    fontSize: 10,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle subtittleTextStyle1 = GoogleFonts.poppins(
    color: Appcolor.primaryColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle subtittleTextStyle = GoogleFonts.poppins(
    color: Appcolor.primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle subtittleTextStyle2 = GoogleFonts.poppins(
    color: Appcolor.textColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle containersubTittlestyle = GoogleFonts.poppins(
    color: Appcolor.buttonColor,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle textFieldstyle = GoogleFonts.poppins(
    color: const Color.fromARGB(255, 157, 157, 157),
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle textFieldlabelstyle = GoogleFonts.poppins(
    color: Appcolor.textColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
}
