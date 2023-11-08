import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

class TsergoLinkBankAccount extends StatelessWidget {
  const TsergoLinkBankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Card(
      child: Material(
        color: Colors.white,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10.0), // Adjust the radius for rounded edges
        ),
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            height: screenSize.height * 36 / 800,
            child: Padding(
              padding: EdgeInsets.only(
                left: 0.025 * screenSize.width,
                right: 0.025 * screenSize.width,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Link bank account',
                    style: GoogleFonts.inter(
                      color: tsergoColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_sharp,
                    size: 26.0,
                    color: Color(0xFF8A2BE2),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
