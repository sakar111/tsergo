import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

class TsergoNotificationCard extends StatelessWidget {
  const TsergoNotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 4.0,
      child: ListTile(
        title: Text.rich(
          TextSpan(
            text: 'You got paid  ',
            style: tsergo14,
            children: [
              TextSpan(
                text: 'Rs 30000',
                style: GoogleFonts.inter(
                  fontSize: 16.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        subtitle: const Text("date/time"),
      ),
    );
  }
}
