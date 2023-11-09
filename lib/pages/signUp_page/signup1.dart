import 'package:flutter/material.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';
import 'package:tsergo/widgets/utils.dart';

class SignUp1 extends StatelessWidget {
  const SignUp1({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: TsergoAppBar(
        isLoggedIn: false,
      ),
      body: TsergoGradientContainer(
        child: Padding(
          padding: EdgeInsets.all(screenSize.width * 54 / 360),
          child: Column(
            children: [
              const TextInputField(hintText: 'Email (optional)'),
              SizedBox(height: screenSize.height * 0.05),
              const TextInputField(hintText: 'Phone Number'),
              SizedBox(height: screenSize.height * 0.05),
              const TsergoButton(buttonName: 'Send OTP', routePath: '/signup2'),
            ],
          ),
        ),
      ),
    );
  }
}
