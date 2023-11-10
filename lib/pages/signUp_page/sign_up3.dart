import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';
import 'package:tsergo/widgets/utils.dart';

class SignUp3 extends StatelessWidget {
  const SignUp3({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const TsergoAppBar(
        isMainContentPage: false,
      ),
      body: TsergoGradientContainer(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(screenSize.width * 54 / 360),
            child: Column(
              children: [
                const TextInputField(hintText: 'Full Name'),
                SizedBox(height: screenSize.height * 0.03),
                const TextInputField(hintText: 'Choose a UserName'),
                SizedBox(height: screenSize.height * 0.03),
                const TextInputField(hintText: 'Choose a strong password'),
                SizedBox(height: screenSize.height * 0.03),
                const TextInputField(hintText: 'Confirm Password'),
                SizedBox(height: screenSize.height * 0.05),
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.upload_file_sharp),
                          Text('Upload Profile Photo', style: tsergo18)
                        ],
                      ),
                    )),
                SizedBox(height: screenSize.height * 0.05),
                TsergoButton(
                  buttonName: 'Sign Up',
                  onPressed: () => GoRouter.of(context).go('/home'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
