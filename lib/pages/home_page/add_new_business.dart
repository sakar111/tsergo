import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

class TsergoAddNewBusiness extends StatelessWidget {
  const TsergoAddNewBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(screenSize.width * 0.04),
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: [
            const Spacer(),
            InkWell(
              onTap: () => context.pushNamed('addEditBusiness',
                  pathParameters: {'isAddBusiness': 'true'}),
              child: Row(
                children: [
                  const Icon(
                    Icons.add_circle_outline_rounded,
                    color: tsergoColor,
                  ),
                  Text(
                    'Add new Business',
                    style: GoogleFonts.inter(
                      color: tsergoColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
