import 'package:flutter/material.dart';
import 'package:tsergo/pages/home_page/add_new_business.dart';
import 'package:tsergo/pages/home_page/balance_box.dart';
import 'package:tsergo/pages/home_page/bank_transfer.dart';
import 'package:tsergo/pages/home_page/business_card.dart';
import 'package:tsergo/pages/home_page/link_bank.dart';
import 'package:tsergo/pages/home_page/user_bar.dart';
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

    return TsergoGradientContainer(
      child: Container(
        padding: EdgeInsets.only(
            left: screenSize.width * 0.03, right: screenSize.width * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TsergoUserBar(),
            SizedBox(height: screenSize.height * 20 / 800),
            Row(
              children: [
                const TsergoBalanceBox(),
                //Icon container with name below
                Expanded(child: BankTransfer(screenSize: screenSize)),
              ],
            ),
            SizedBox(height: screenSize.height * 16 / 800),
            const TsergoLinkBankAccount(),
            SizedBox(height: screenSize.height * 16 / 800),
            Expanded(
              child: ListView(
                children: List.generate(
                  10,
                  (index) => Businesses(
                    index: index,
                  ),
                ),
              ),
            ),
            const TsergoAddNewBusiness(),
          ],
        ),
      ),
    );
  }
}
