import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/home_page/balance_box.dart';
import 'package:tsergo/home_page/bank_transfer.dart';
import 'package:tsergo/home_page/business_card.dart';
import 'package:tsergo/home_page/link_bank.dart';
import 'package:tsergo/home_page/user_bar.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';

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
      appBar: const TsergoAppBar(),
      body: TsergoGradientContainer(
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
