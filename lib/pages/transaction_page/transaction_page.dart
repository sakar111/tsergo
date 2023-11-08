import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/pages/transaction_page/dropdown_days.dart';
import 'package:tsergo/widgets/color_gradient.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  int selectedDays = 7;
  final List<int> dayOptions = [1, 7, 30, 60];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return TsergoGradientContainer(
      child: Container(
        padding: EdgeInsets.only(
            left: screenSize.width * 0.03, right: screenSize.width * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenSize.height * 20 / 800),
            Text(
              'Transactions History',
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenSize.height * 10 / 800),
            TsergoDropDownDays(),
            Card(
              child: Material(
                color: Colors.white,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: screenSize.height * 120 / 800,
                    child: Padding(
                      padding: EdgeInsets.all(screenSize.width *
                          0.03), // Adjust the padding as needed
                      child: Row(),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
