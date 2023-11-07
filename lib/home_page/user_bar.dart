import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TsergoUserBar extends StatelessWidget {
  const TsergoUserBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: screenSize.width * 50 / 360,
          width: screenSize.width * 50 / 360,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/sakar.png'),
            ),
          ),
        ),
        SizedBox(width: screenSize.width * 0.03), // Add some spacing
        Text('Username',
            style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}
