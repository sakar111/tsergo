import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color tsergoColor = Color(0xFF8A2BE2);

const List<int> transactionDaysOptions = [
  1,
  7,
  15,
  30
]; //5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]; // Customize these options
const int selectedDays = 1; // Default to 7 days

TextStyle tsergo16Bold = GoogleFonts.inter(
  fontSize: 16.0,
  color: tsergoColor,
  fontWeight: FontWeight.bold,
);

TextStyle tsergo18Bold = GoogleFonts.inter(
  fontSize: 18.0,
  color: tsergoColor,
  fontWeight: FontWeight.bold,
);


TextStyle tsergoCustomStyle32 = const TextStyle(
    fontSize: 32.0, fontFamily: 'CustomFont', color: tsergoColor);
