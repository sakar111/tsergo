import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';
import 'package:tsergo/widgets/utils.dart';

class ForgotPassword1 extends StatelessWidget {
  const ForgotPassword1({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const TsergoAppBar(
        isMainContentPage: false,
      ),
      body: TsergoGradientContainer(
        child: Padding(
          padding: EdgeInsets.all(screenSize.width * 54 / 360),
          child: Column(
            children: [
              const TextInputField(labeltext: 'Phone Number'),
              SizedBox(height: screenSize.height * 0.05),
              TsergoButton(
                buttonName: 'Send OTP',
                onPressed: () => context.pushNamed('forgotPassword2',pathParameters: {'isForgotPassword': 'true'}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
