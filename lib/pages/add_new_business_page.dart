import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';
import 'package:tsergo/widgets/utils.dart';

class AddNewBusiness extends StatelessWidget {
  const AddNewBusiness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const TsergoAppBar(isMainContentPage: false),
      body: TsergoGradientContainer(
        child: Container(
          padding: EdgeInsets.all(screenSize.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add New Business',
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
                        SizedBox(height: screenSize.height * 0.05),
                        ListView.separated(
                          itemBuilder: (context, index) {
                            return widgetList[index];
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: screenSize.height * 0.03);
                          },
                          itemCount: widgetList.length,
                          shrinkWrap:
                              true, // Add this line to make the ListView scrollable inside a Column
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

const List<Widget> widgetList = [
  TextInputField(hintText: 'Business Name'),
  TextInputField(hintText: 'Location (City)'),
  TextInputField(hintText: 'Location (Street)'),
  TextInputField(hintText: 'Contact Number'),
  TextInputField(hintText: 'Email (optional)'),
  TextInputField(hintText: 'Website (optional)'),
  TextInputField(hintText: 'Google Maps Link'),
];
