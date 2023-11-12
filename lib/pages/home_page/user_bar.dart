import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/widgets/user_circular_image.dart';

class TsergoUserBar extends StatelessWidget {
  const TsergoUserBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        const UserCircularImage(imageRatio: 0.2),
        SizedBox(width: screenSize.width * 0.03), // Add some spacing
        Text('Sakar_Pathak',
            style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}
