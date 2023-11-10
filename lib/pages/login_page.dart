import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/widgets/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: TsergoGradientContainer(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 54 / 360),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: screenSize.width *
                        0.35, // Adjust the width proportionally
                    height: screenSize.width *
                        0.35, // Maintain the same height as the width
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/tsergo.png', // Replace with your image path
                        width: screenSize.width *
                            0.35, // Adjust the width proportionally
                        height: screenSize.width *
                            0.35, // Maintain the same height as the width
                        fit: BoxFit
                            .cover, // Crop and center the image within the circular container
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 36 / 800,
                  ),
                  Text('TSERGO', style: tsergoCustomStyle32),
                  SizedBox(
                    height: screenSize.height * 60 / 800,
                  ),
                  const TextInputField(
                    hintText: 'Username',
                  ),
                  SizedBox(
                    height: screenSize.height * 24 / 800,
                  ),
                  const TextInputField(
                    hintText: 'Password',
                    isPassword: true,
                  ),
                  SizedBox(
                    height: screenSize.height * 12 / 800,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        GoRouter.of(context).push('/forgotPassword1');
                      },
                      child: Text('Forgot Password?', style: tsergo16Bold),
                      // textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 32 / 800,
                  ),
                  TsergoButton(
                    buttonName: 'Sign In',
                    onPressed: () => GoRouter.of(context).go('/home'),
                  ),
                  SizedBox(
                    height: screenSize.height * 32 / 800,
                  ),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).push('/signup1');
                    },
                    child: Text(
                      'Register',
                      style: tsergo18Bold,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 6 / 800),
                  Text(
                    'Or',
                    style: GoogleFonts.inter(
                      fontSize: 16.0,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: screenSize.height * 6 / 800,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In with: ',
                      style: tsergo18Bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
