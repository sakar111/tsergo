import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';
import 'package:tsergo/widgets/user_circular_image.dart';

class ViewProfilePage extends StatelessWidget {
  const ViewProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const TsergoAppBar(isMainContentPage: false),
      body: TsergoGradientContainer(
        child: Padding(
          padding: EdgeInsets.all(screenSize.width * 0.03),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Center(
                child: Stack(
                  children: [
                    const UserCircularImage(imageRatio: 0.4),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            color: tsergoColor),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(Icons.edit),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(height: screenSize.height * 0.025),
                  Text(
                    'Username',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: screenSize.height * 0.01),
                  Text(
                    'First Middle Last',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Print Other Infos'),
                  TextButton(
                      onPressed: () {},
                      child: Text('Edit Contact Info', style: tsergo16Bold))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
