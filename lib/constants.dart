import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color tsergoColor = Color(0xFF8A2BE2);

const List<String> transactionDaysOptions = [
  'Today',
  'Last 7 days',
  'Last 15 days',
  'Last 30 days',
];

const List<String> businessCategory = [
  'Hotel',
  'Restaurant',
];

const List<String> bankAccountOptions = [
  'Bank Account 1',
  'Bank Account 2',
  'Bank Account 3',
];

TextStyle tsergo16Bold = GoogleFonts.inter(
  fontSize: 16.0,
  color: tsergoColor,
  fontWeight: FontWeight.bold,
);

TextStyle inter16Bold = GoogleFonts.inter(
  fontSize: 16.0,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

TextStyle tsergo14 = GoogleFonts.inter(fontSize: 14.0, color: Colors.black);

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
