import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

class TsergoBotomNavigationBar extends StatefulWidget {
  const TsergoBotomNavigationBar({Key? key}) : super(key: key);

  @override
  State<TsergoBotomNavigationBar> createState() =>
      _TsergoBotomNavigationBarState();
}

class _TsergoBotomNavigationBarState extends State<TsergoBotomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: GoogleFonts.inter(
          color: tsergoColor, fontSize: 12.0, fontWeight: FontWeight.bold),
      unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 12.0, fontWeight: FontWeight.bold),
      iconSize: 28.0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call_rounded),
          label: 'Support',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long),
          label: 'Transactions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          label: 'Search',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: tsergoColor,
      onTap: _onItemTapped,
    );
  }
}
