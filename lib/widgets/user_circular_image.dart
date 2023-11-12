import 'package:flutter/material.dart';

class UserCircularImage extends StatelessWidget {
  final double imageRatio;
  const UserCircularImage({super.key, required this.imageRatio});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * imageRatio,
      height: screenSize.width * imageRatio,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 4,
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2.0,
            blurRadius: 10.0,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
        shape: BoxShape.circle,
        image: const DecorationImage(
          image: AssetImage('assets/images/sakar.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
