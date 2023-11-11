import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

class TsergoDropDownMenu extends StatefulWidget {
  final bool isBusinessNotDate;

  const TsergoDropDownMenu({super.key, this.isBusinessNotDate = true});

  @override
  State<TsergoDropDownMenu> createState() => _TsergoDropDownMenuState();
}

class _TsergoDropDownMenuState extends State<TsergoDropDownMenu> {
  late String _selectedValue;
  late List<String> _dropDownOptions;

  @override
  void initState() {
    super.initState();
    _selectedValue =
        widget.isBusinessNotDate ? businessType[0] : transactionDaysOptions[0];
    _dropDownOptions = widget.isBusinessNotDate
        ? businessType
        : transactionDaysOptions; // Set the dropdown options
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

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
        child: DropdownButton<String>(
          value: _selectedValue,
          icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
          style: const TextStyle(color: Colors.black),
          onChanged: (String? value) {
            setState(() {
              _selectedValue = value!;
            });
          },
          items: _dropDownOptions.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: GoogleFonts.inter(fontSize: 16.0),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
