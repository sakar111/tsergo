import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TsergoTransactionCard extends StatelessWidget {
  const TsergoTransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 4.0,
        child: ListTile(
            title: Text(
              "Trasaction Title",
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("dd MON yyyy\nhh:mm"),
            trailing: Text(
              'Rs. 5000',
              style: GoogleFonts.inter(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            )));
  }
}
