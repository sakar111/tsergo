import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/widgets/dropdown_menu.dart';
import 'package:tsergo/pages/transaction_page/transaction_card.dart';
import 'package:tsergo/widgets/color_gradient.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return TsergoGradientContainer(
      child: Container(
        padding: EdgeInsets.all(
            screenSize.width * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenSize.height * 10 / 800),
            Text(
              'Transactions History',
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenSize.height * 20 / 800),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TsergoDropDownMenu(isBusinessNotDate: false),
                Icon(Icons.local_print_shop,color: tsergoColor, size: 40.0,)
              ],
            ),
            SizedBox(height: screenSize.height * 20 / 800),
            Expanded(
                child: ListView(
                    children: List.generate(
                        10, (index) => const TsergoTransactionCard())))
          ],
        ),
      ),
    );
  }
}
