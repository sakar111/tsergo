import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color tsergoColor = Color(0xFF8A2BE2);

const List<String> transactionDaysOptions = [
  'Today',
  'Last 7 days',
  'Last 15 days',
  'Last 30 days',
]; //5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]; // Customize these options

const List<String> businessType = [
  'Hotel',
  'Restaurant',
];

TextStyle tsergo16Bold = GoogleFonts.inter(
  fontSize: 16.0,
  color: tsergoColor,
  fontWeight: FontWeight.bold,
);

TextStyle tsergo16 = GoogleFonts.inter(
  fontSize: 16.0,
  color: Colors.black,
);

TextStyle tsergo18Bold = GoogleFonts.inter(
  fontSize: 18.0,
  color: tsergoColor,
  fontWeight: FontWeight.bold,
);

TextStyle tsergo18 = GoogleFonts.inter(
  fontSize: 18.0,
  color: tsergoColor,
);

TextStyle tsergoCustomStyle32 = const TextStyle(
    fontSize: 32.0, fontFamily: 'CustomFont', color: tsergoColor);

const Map<String, String> businessDetails = {
  'Business Name': 'Tsergo 10 star hotel',
  'Location (City)': 'Kathmandu',
  'Location (Street)': 'Thamel',
  'Contact Number': '9841234567',
  'Email (optional)': 'tsergo@gmail.com',
  'Website (optional)': 'www.tsergo.com',
  'Google Maps Link': 'https://goo.gl/maps/2QY1Xy7Q2J2QY1Xy7Q2J',
};
