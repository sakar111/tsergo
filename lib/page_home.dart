import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/widgets/color_gradient.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            children: [Row(
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
                    SizedBox(
                        width: screenSize.width * 0.03), // Add some spacing
                    Text('Username',
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
