import 'dart:math';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BusinessDetails extends StatefulWidget {
  const BusinessDetails({Key? key}) : super(key: key);

  @override
  State<BusinessDetails> createState() => _BusinessDetailsState();
}

class _BusinessDetailsState extends State<BusinessDetails> {
  late PageController _pageController;
  int activePage = 0;

  final List<String> _imagePaths = [
    'assets/images/hotelSample/hotelSample1.png',
    'assets/images/hotelSample/hotelSample2.png',
    'assets/images/hotelSample/hotelSample3.png',
    'assets/images/hotelSample/hotelSample4.png',
    'assets/images/hotelSample/hotelSample1.png',
    'assets/images/hotelSample/hotelSample2.png',
    'assets/images/hotelSample/hotelSample3.png',
    'assets/images/hotelSample/hotelSample4.png',
    'assets/images/hotelSample/hotelSample1.png',
    'assets/images/hotelSample/hotelSample2.png',
    'assets/images/hotelSample/hotelSample3.png',
    'assets/images/hotelSample/hotelSample4.png',
    'assets/images/hotelSample/hotelSample1.png',
    'assets/images/hotelSample/hotelSample2.png',
    'assets/images/hotelSample/hotelSample3.png',
    'assets/images/hotelSample/hotelSample4.png',
  ];


  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final List<String> detailTitles = businessDetails.keys.toList();

    return Scaffold(
      appBar: TsergoAppBar(isMainContentPage: false),
      body: TsergoGradientContainer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.03 * screenSize.width),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 6.0,
                    surfaceTintColor: Colors.white,
                    child: CarouselSlider.builder(
                      itemCount: _imagePaths.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Container(
                        // Adjust the fit property to BoxFit.cover
                        child: Image.asset(
                          _imagePaths[itemIndex],
                          fit: BoxFit.contain,
                        ),
                      ),
                      options: CarouselOptions(
                        height: screenSize.height * 0.4,
                        viewportFraction: 0.8,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activePage = index;
                          });
                        },
                        initialPage: 0,
                        enableInfiniteScroll: false,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // Add your edit functionality here
                        },
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: IconButton(
                        icon: Icon(Icons.add_a_photo_rounded),
                        onPressed: () {
                          // Add your edit functionality here
                        },
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '${activePage + 1}/${_imagePaths.length}',
                        style: tsergo16Bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.03),
              Expanded(
                child: SizedBox(
                  child: Stack(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 6.0,
                        surfaceTintColor: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(screenSize.height * 0.03),
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              final detailTitle = detailTitles[index];
                              final detailValue = businessDetails[detailTitle];

                              return Text.rich(
                                TextSpan(
                                  text: '$detailTitle: ',
                                  style: tsergo16Bold,
                                  children: [
                                    TextSpan(
                                      text: detailValue,
                                      style: tsergo16,
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                  height: screenSize.height * 0.015);
                            },
                            itemCount: detailTitles.length,
                            shrinkWrap: true,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () => context.pushNamed('addEditBusiness',
                                pathParameters: {'isAddBusiness': 'false'}),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
