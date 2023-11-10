import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';
import 'package:tsergo/widgets/utils.dart';

class SignUp2 extends StatelessWidget {
  const SignUp2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const TsergoAppBar(
        isLoggedIn: false,
      ),
      body: TsergoGradientContainer(
        child: Padding(
          padding: EdgeInsets.all(screenSize.width * 54 / 360),
          child: Column(
            children: [
              const TextInputField(hintText: 'Enter OTP'),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend',
                    style: tsergo18Bold,
                  ),
                ),
              ),
              TsergoButton(
                buttonName: 'Verify',
                onPressed: () => GoRouter.of(context).push('/signup3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
