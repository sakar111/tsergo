import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';
import 'package:tsergo/widgets/utils.dart';
import 'package:tsergo/widgets/dropdown_menu.dart';

class AddEditBusiness extends StatelessWidget {
  final String? isAddBusiness;
  const AddEditBusiness({super.key, this.isAddBusiness = 'true'});

  @override
  Widget build(BuildContext context) {
    // get business details from database if isAddBusiness is false
    final List<String> detailTitles = businessDetails.keys.toList();

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
                isAddBusiness == 'true' ? 'Add New Business' : 'Edit Business',
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
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: TsergoDropDownMenu(isBusinessNotDate: true)),
                        SizedBox(height: screenSize.height * 0.03),
                        ListView.separated(
                          itemBuilder: (context, index) {
                            return TextInputField(
                              labeltext: detailTitles[index],
                              initialValue: isAddBusiness == 'false'
                                  ? businessDetails[detailTitles[index]]
                                  : '',
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: screenSize.height * 0.03);
                          },
                          itemCount: detailTitles.length,
                          shrinkWrap:
                              true, // Add this line to make the ListView scrollable inside a Column
                        ),
                        Visibility(
                          visible: isAddBusiness == 'true',
                          child: Column(children: [
                            SizedBox(height: screenSize.height * 0.03),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: tsergoColor,
                                surfaceTintColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                elevation: 4.0,
                              ),
                              child: SizedBox(
                                height: screenSize.height * 0.06,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(Icons.upload_file_sharp),
                                    Text('Upload Photos (0/3)', style: tsergo18)
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(height: screenSize.height * 0.05),
                        TsergoButton(
                          buttonName: 'Done',
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
