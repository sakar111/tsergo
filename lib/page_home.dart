import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/widgets/color_gradient.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showBalance = false;

  void _toggleBalanceVisibility() {
    setState(() {
      _showBalance = !_showBalance;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenSize.height * 50 / 800,
        automaticallyImplyLeading: false, // Set this to false
        title: const Text('TSERGO'),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: TsergoGradientContainer(
        child: Container(
          padding: EdgeInsets.only(
              left: screenSize.width * 0.03, right: screenSize.width * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: screenSize.width * 50 / 360,
                    width: screenSize.width * 50 / 360,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/sakar.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.03), // Add some spacing
                  Text('Username',
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // This aligns the children to both ends of the main axis
                children: [
                  Card(
                    elevation:
                        4.0, // Adjust the elevation value to control the amount of raise
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius for rounded edges
                    ),
                    child: SizedBox(
                      height: screenSize.height * 80/800,
                      width: screenSize.width * 210/360,
                      child: Column(
                          children: [
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
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility_off),
                                    onPressed: _toggleBalanceVisibility,
                                    color: Color(0xFF8A2BE2))
                              ],
                            ),
                            Text(
                              _showBalance ? 'Rs. 1000' : 'Rs. ****',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.03), // Add some spacing
                  //Icon container with name below
                  Column(
                    // Add a column
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: screenSize.width * 22 / 360,
                        backgroundColor: Color(0xFF8A2BE2),
                        child: const Icon(Icons.account_balance,
                            color: Colors.white, size: 35.0),
                      ),
                      // send the text to end of the row
                      Text(
                        'Bank\nTransfer',
                        style: GoogleFonts.inter(
                            color: Color(0xFF8A2BE2),
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            height: 1.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
