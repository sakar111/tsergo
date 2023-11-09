import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

class BankTransfer extends StatelessWidget {
  final Size screenSize;
  const BankTransfer({super.key, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      // Add a column
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Material(
          elevation: 5, // Set the elevation (shadow)
          color: tsergoColor,
          shape: const CircleBorder(), // Set the shape to a circle
          child: InkWell(
            onTap: () {},
            customBorder: const CircleBorder(),
            child: Padding(
              padding: EdgeInsets.all(screenSize.width * 0.025),
              child: const Icon(Icons.account_balance,
                  color: Colors.white, size: 35.0),
            ),
          ),
        ),

        // send the text to end of the row
        Text(
          'Bank\nTransfer',
          style: GoogleFonts.inter(
              color: tsergoColor,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              height: 1.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
