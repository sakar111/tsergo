import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TsergoTransactionCard extends StatelessWidget {
  const TsergoTransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(screenSize.width * 0.03),
        child: SizedBox(
          width: double.infinity,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Trasaction Title",
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                const Text("dd MON yyyy"),
                const Text("hh:mm"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Rs. 5000',
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
