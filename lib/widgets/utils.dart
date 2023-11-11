import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

class TsergoButton extends StatelessWidget {
  final String buttonName;
  final Function? onPressed;
  const TsergoButton({super.key, required this.buttonName, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed?.call();
        // GoRouter.of(context).go(routePath);
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: tsergoColor, // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        // fixedSize:
        //     Size(screenSize.width * 101 / 360, screenSize.height * 44 / 800),
      ),
      child: Text(
        buttonName,
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  final String labeltext;
  final bool isPassword;
  final String initialValue;
  const TextInputField(
      {super.key, required this.labeltext, this.isPassword = false, this.initialValue = ''});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: MediaQuery.of(context).size.height * 48 / 800,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(8.0),
    //     boxShadow: const [
    //       BoxShadow(
    //         color: Colors.grey,
    //         blurRadius: 2.0,
    //         offset: Offset(0, 2),
    //       ),
    //     ],
    //   ),
    //   child: SizedBox(
        // child: 
        return TextFormField(
          obscureText: isPassword, // If it's a password field, obscure the text
          initialValue: initialValue,
          decoration: InputDecoration(
            fillColor: Colors.white,filled: true,
            labelText: labeltext,
            contentPadding: const EdgeInsets.all(8.0),
            border: const OutlineInputBorder(),
          ),
          // keyboardType: TextInputType.phone,
          textAlign: TextAlign.left,
          textAlignVertical: TextAlignVertical.center,
      //   ),
      // ),
    );
  }
}
