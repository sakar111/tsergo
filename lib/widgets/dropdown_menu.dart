import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TsergoDropDownMenu extends StatefulWidget {
  final List<String> dropDownOptions;
  const TsergoDropDownMenu({super.key, this.dropDownOptions = const ['Null']});

  @override
  State<TsergoDropDownMenu> createState() => _TsergoDropDownMenuState();
}

class _TsergoDropDownMenuState extends State<TsergoDropDownMenu> {
  String _selectedValue = '';
  @override
  void initState() {
    super.initState();
    _selectedValue = widget.dropDownOptions[0];
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
          isExpanded: true,
          items: widget.dropDownOptions.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  // overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(fontSize: 16.0),
                ),
              );
            },
          ).toList(growable: false),
        ),
      ),
    );
  }
}
