import 'package:flutter/material.dart';

class TsergoBotomNavigationBar extends StatefulWidget {
  const TsergoBotomNavigationBar({super.key});

  @override
  State<TsergoBotomNavigationBar> createState() =>
      _TsergoBotomNavigationBarState();
}

class _TsergoBotomNavigationBarState extends State<TsergoBotomNavigationBar> {
  int currentPageIndex = 0;

  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.onlyShowSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      labelBehavior: labelBehavior,
      selectedIndex: currentPageIndex,
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      destinations: const <Widget>[
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
        NavigationDestination(icon: Icon(Icons.add), label: 'Add'),
        NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorite'),
      ],
    );
  }
}
