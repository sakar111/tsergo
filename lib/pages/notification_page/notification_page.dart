import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/pages/notification_page/notification_card.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const TsergoAppBar(isMainContentPage: false),
      body: TsergoGradientContainer(
        child: Container(
          padding: EdgeInsets.all(screenSize.width * 0.03),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenSize.height * 10 / 800),
                Text(
                  'Notification',
                  style: GoogleFonts.inter(
                      fontSize: 26.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListView(
                      children: List.generate(
                          20, (index) => const TsergoNotificationCard())),
                )
              ]),
        ),
      ),
    );
  }
}
