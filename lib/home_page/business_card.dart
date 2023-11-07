import 'package:flutter/material.dart';

class Businesses extends StatelessWidget {
  const Businesses({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Card(
      color: Colors.white,
      elevation:
          4.0, // Adjust the elevation value to control the amount of raise
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(10.0), // Adjust the radius for rounded edges
      ),
    child: SizedBox(
      height: screenSize.height * 120 / 800,
      child: Expanded(
        child: Text("hello"),
      ),
    ),
    );
  }
}