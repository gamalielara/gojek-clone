import 'package:flutter/material.dart';

Color darkGreen = const Color(0xFF097210);
Color primaryGreen = const Color(0xFF00880F);

Color dark = const Color(0xFF1C1C1C);
Color darker = const Color(0xFF4A4A4A);
Color grey = const Color(0xFF999798);
Color light = const Color(0xFFEDEDED);

Color darkBlue = const Color(0xFF0281A0);
Color primaryBlue = const Color(0xFF00AED5);
Color lightBlue = const Color(0xFF38BBDA);

Color red = const Color(0xFFED2739);
Color purple = const Color(0xFF87027B);

// Typography
TextStyle regularSmall =
    const TextStyle(fontFamily: 'SF-Pro-Display', fontSize: 12.5);
TextStyle regular = regularSmall.copyWith(fontSize: 14);

TextStyle semiboldSmall = regularSmall.copyWith(fontWeight: FontWeight.w600);
TextStyle semibold = semiboldSmall.copyWith(fontSize: 14, letterSpacing: 0.1);

TextStyle bold16 = regularSmall.copyWith(
    fontWeight: FontWeight.w700, fontSize: 16, letterSpacing: 0.1);
TextStyle bold18 = bold16.copyWith(fontSize: 18, letterSpacing: -0.5);
