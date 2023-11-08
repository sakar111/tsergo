import 'package:flutter/material.dart';
import 'package:tsergo/constants.dart';

class TsergoDropDownDays extends StatefulWidget {
  const TsergoDropDownDays({super.key});

  @override
  State<TsergoDropDownDays> createState() => _TsergoDropDownDaysState();
}

class _TsergoDropDownDaysState extends State<TsergoDropDownDays> {
  bool isDropdownOpen = false;
  int _selectedDays = selectedDays;

  void toggleDropdown() {
    setState(() {
      isDropdownOpen = !isDropdownOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: InkWell(
              onTap: toggleDropdown,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 36,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: isDropdownOpen ? 150 : 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Material(
                elevation: isDropdownOpen ? 5 : 0,
                child: ListView(
                  children: transactionDaysOptions.map((int option) {
                    return ListTile(
                      onTap: () {
                        setState(() {
                          _selectedDays = option;
                          isDropdownOpen = false;
                        });
                      },
                      title: Center(child: Text('$option days')),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Text(
            'View transactions for the last $_selectedDays days.',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
