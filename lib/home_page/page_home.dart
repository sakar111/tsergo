import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/home_page/balance_box.dart';
import 'package:tsergo/home_page/bank_transfer.dart';
import 'package:tsergo/home_page/business_card.dart';
import 'package:tsergo/widgets/color_gradient.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              SizedBox(height: screenSize.height * 20 / 800),
              Row(
                children: [
                  const TsergoBalanceBox(),
                  //Icon container with name below
                  Expanded(child: BankTransfer(screenSize: screenSize)),
                ],
              ),
              SizedBox(height: screenSize.height * 16 / 800),
              Card(
                child: Material(
                  color: Colors.white,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Adjust the radius for rounded edges
                  ),
                  child: SizedBox(
                    height: screenSize.height * 36 / 800,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 0.025 * screenSize.width,
                        right: 0.025 * screenSize.width,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Link bank account',
                            style: GoogleFonts.inter(
                              color: tsergoColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_sharp,
                            size: 26.0,
                            color: Color(0xFF8A2BE2),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 16 / 800),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [
                    Businesses(
                      index: 1,
                    ),
                    Businesses(
                      index: 2,
                    ),
                    Businesses(
                      index: 3,
                    ),
                    Businesses(
                      index: 4,
                    ),
                    Businesses(
                      index: 5,
                    ),
                    Businesses(
                      index: 6,
                    ),
                    Businesses(
                      index: 7,
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
