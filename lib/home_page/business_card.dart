import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

Widget businessImage(Size screenSize) {
  return Container(
    width: screenSize.width * 100 / 360, // Set the desired width
    height: screenSize.height * 100 / 800, // Set the desired height
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 4),
          blurRadius: 4.0,
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        'assets/images/hotel.png', // Replace with your hotel image asset
        fit: BoxFit.cover, // Adjust the BoxFit as needed
      ),
    ),
  );
}

Widget businessDescription(int index) {
  return Expanded(
    child: Column(
      crossAxisAlignment: index.isOdd?CrossAxisAlignment.start:CrossAxisAlignment.end,
      children: [
        Text(
          'Hotel Name',
          style: GoogleFonts.inter(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
         Text(
          'Location: City, Country',
          style: GoogleFonts.inter(fontSize: 14.0),
        ),
         Text(
          'Price: \$100 per night',
          style: GoogleFonts.inter(fontSize: 14.0),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: index.isOdd?MainAxisAlignment.end:MainAxisAlignment.start,
          children: [
            Text(
              '4.7',
              style: GoogleFonts.inter(
                color: tsergoColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(Icons.star_rounded, color: tsergoColor, size: 28.0),
          ],
        )
      ],
    ),
  );
}

class Businesses extends StatelessWidget {
  final int index;
  const Businesses({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Card(
        child: Material(
            color: Colors.white,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: InkWell(
              onTap: (){},
              child: SizedBox(
                height: screenSize.height * 120 / 800,
                child: Padding(
                    padding: EdgeInsets.all(
                        screenSize.width * 0.03), // Adjust the padding as needed
                    child: Row(
                      children: index.isOdd
                          ? [
                              businessImage(screenSize),
                              SizedBox(width: screenSize.width * 0.03),
                              businessDescription(index),
                            ]
                          : [
                              businessDescription(index),
                              SizedBox(width: screenSize.width * 0.03),
                              businessImage(screenSize),
                            ],
                    )),
              ),
            )));
  }
}
