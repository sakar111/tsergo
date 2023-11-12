import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/dropdown_menu.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';
import 'package:tsergo/widgets/utils.dart';

class BankTransferPage extends StatelessWidget {
  static const List<Widget> _formFields = [
    TextInputField(labeltext: 'Account'),
    TextInputField(labeltext: 'Account Holder\'s Name'),
  ];

  const BankTransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    // get business details from database if isAddBusiness is false

    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const TsergoAppBar(isMainContentPage: false),
      body: TsergoGradientContainer(
        child: Container(
          padding: EdgeInsets.all(screenSize.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Bank Transfer',
                style: GoogleFonts.inter(
                  fontSize: 26.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.12),
                    child: Column(
                      children: [
                        SizedBox(height: screenSize.height * 0.03),
                        ListView.separated(
                          itemBuilder: (context, index) {
                            return _formFields[index];
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: screenSize.height * 0.03);
                          },
                          itemCount: _formFields.length,
                          shrinkWrap:
                              true, // Add this line to make the ListView scrollable inside a Column
                        ),
                        SizedBox(height: screenSize.height * 0.03),
                        const TsergoDropDownMenu(
                            dropDownOptions: bankAccountOptions),
                        SizedBox(height: screenSize.height * 0.05),
                        TsergoButton(
                          buttonName: 'Transfer',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
