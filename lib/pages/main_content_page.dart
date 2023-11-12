import 'package:flutter/material.dart';
import 'package:tsergo/pages/home_page/home_page.dart';
import 'package:tsergo/pages/side_menu.dart';
import 'package:tsergo/pages/support_page.dart';
import 'package:tsergo/pages/transaction_page/transaction_page.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';
import 'package:tsergo/widgets/tsergo_bottom_navbar.dart';

class MainContentPage extends StatefulWidget {
  const MainContentPage({super.key});

  @override
  State<MainContentPage> createState() => _MainContentPageState();
}

class _MainContentPageState extends State<MainContentPage> {
  
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TsergoAppBar(),
      body: IndexedStack(
        index: _selectedIndex,
        children: const <Widget>[
          HomePage(), // Create and replace with your actual pages/screens
          SupportPage(),
          TransactionsPage(),
          SizedBox(child:Text('Search Page')),
        ],
      ),
      bottomNavigationBar: TsergoBotomNavigationBar(selectedIndex: _selectedIndex,onItemTapped: _onItemTapped,),
      // drawer: SideMenu(),
    );
  }
}
