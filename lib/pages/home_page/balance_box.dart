import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

class TsergoBalanceBox extends StatefulWidget {
  const TsergoBalanceBox({super.key});

  @override
  State<TsergoBalanceBox> createState() => _TsergoBalanceBoxState();
}

class _TsergoBalanceBoxState extends State<TsergoBalanceBox> {
  bool _showBalance = false;

  void _toggleBalanceVisibility() {
    setState(() {
      _showBalance = !_showBalance;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Card(
      child: Material(
        color: Colors.white,
        elevation:
            4.0, // Adjust the elevation value to control the amount of raise
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10.0), // Adjust the radius for rounded edges
        ),
        child: SizedBox(
          height: screenSize.height * 80 / 800,
          width: screenSize.width * 210 / 360,
          child: Padding(
            padding: EdgeInsets.only(
              left: 0.05 * screenSize.width,
              right: 0.01 * screenSize.width,
              // bottom: 0.01 * screenSize.height,
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Balance',
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: _showBalance
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                    onPressed: _toggleBalanceVisibility,
                    color: tsergoColor,
                    iconSize: 22.0,
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  _showBalance ? 'Rs. 1000' : 'Rs. ****',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}