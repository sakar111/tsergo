import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/presentation/viber_icons.dart';
import 'package:tsergo/presentation/whatsapp_icons.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return TsergoGradientContainer(
      child: Container(
        padding: EdgeInsets.all(screenSize.width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenSize.height * 10 / 800),
            Text(
              'Support',
              style: GoogleFonts.inter(
                  fontSize: 26.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenSize.height * 0.02),
            const SupportCard(
                name: 'Email', icon: Icons.email, iconColor: tsergoColor),
            const SupportCard(
                name: "Call Us", icon: Icons.phone, iconColor: tsergoColor),
            const SupportCard(
              name: 'Viber',
              icon: Viber.viber,
              iconColor: Color(0xFF7360F2),
            ),
            const SupportCard(
              name: 'WhatsApp',
              icon: Whatsapp.whatsapp,
              iconColor: Color(0xFF25d366),
            ),
            SizedBox(height: screenSize.height * 0.03)
          ],
        ),
      ),
    );
  }
}

class SupportCard extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color iconColor;
  const SupportCard(
      {super.key,
      required this.name,
      required this.icon,
      this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 4.0,
        child: LayoutBuilder(
          builder: (context, constraints) => SizedBox(
            width: double.infinity,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      size: constraints.maxHeight *
                          0.5, // Adjust the percentage as needed
                      color: iconColor,
                    ),
                    Text(
                      name,
                      style: GoogleFonts.inter(
                          fontSize: constraints.maxHeight * 0.15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
