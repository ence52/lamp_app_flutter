import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: kPrimaryColor,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[900],
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),

  textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.white),
);
const Color kPrimaryColor = Color(0xFF333C4B);
const Color kYellowColor = Color(0xFFD4A056);
const Color kSecondaryColor = Color(0xFF4A4C5C);
const Color kTextColor = Colors.white;
EdgeInsets kDefaultPadding = EdgeInsets.symmetric(
  horizontal: 5.w,
  vertical: 5.w,
);
