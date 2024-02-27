import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static TextStyle homeStyle =  GoogleFonts.habibi(
      color: Colors.white,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold
  );


  static TextStyle headingStyle =  GoogleFonts.habibi(
      color: Colors.white,
      fontSize: 25.sp,
      fontWeight: FontWeight.bold
  );

  static TextStyle instructionStyle =  GoogleFonts.katibeh(
    color: Colors.white,
    fontSize: 24,
  );

  static TextStyle GamesListStyle =  GoogleFonts.katibeh(
    color: Colors.black,
    fontSize: 24,
  );

   static TextStyle textInButtonsStyle =  GoogleFonts.katibeh(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}