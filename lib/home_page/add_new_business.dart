import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

class TsergoAddNewBusiness extends StatelessWidget {
  const TsergoAddNewBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        children: [
          const Spacer(),
          InkWell(
            onTap: () {
              // Handle the click action for both the Icon and Text here
              print('Icon and Text clicked!');
            },
            child: Row(
              children: [
                const Icon(
                  Icons.add_circle_outline_rounded,
                  color: tsergoColor,
                ),
                Text(
                  'Add new Business',
                  style: GoogleFonts.inter(
                    color: tsergoColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
