import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

class TsergoDropDownDays extends StatefulWidget {
  const TsergoDropDownDays({super.key});

  @override
  State<TsergoDropDownDays> createState() => _TsergoDropDownDaysState();
}

class _TsergoDropDownDaysState extends State<TsergoDropDownDays> {
  int _selectedDays = selectedDays;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 132 / 360, // Set the desired width
      decoration: BoxDecoration(
        color: Colors.white, // Set the background color to white
        borderRadius: BorderRadius.circular(8.0), // Add some border radius
        boxShadow: const [
          BoxShadow(
            color: Colors.grey, // Shadow color
            blurRadius: 4.0, // Spread radius
            offset: Offset(0, 4), // Offset
          ),
        ],
      ),
      alignment: Alignment.center,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          value: _selectedDays,
          icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
          style: const TextStyle(color: Colors.black),
          onChanged: (int? value) {
            setState(() {
              _selectedDays = value!;
            });
          },
          items: transactionDaysOptions.map<DropdownMenuItem<int>>(
            (int value) {
              return DropdownMenuItem<int>(
                value: value,
                child: Text(
                  value==1?'Today':'Last $value days',
                  style: GoogleFonts.inter(fontSize: 14.0),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
