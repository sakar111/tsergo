import 'package:flutter/material.dart';

class TsergoGradientContainer extends StatelessWidget {
  final Widget child;

  const TsergoGradientContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF2D3FB), // Color at the top
            Color(0xFFFDF9FF), // Color at the center
            Color(0xFFFFFFFF), // Color at the bottom
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // stops: [
          //   0.0,
          //   0.5,
          //   1.0,
          //   1.0,
          // ],
        ),
      ),
      child: SafeArea(
        child: child,
      ),
    );
  }
}
