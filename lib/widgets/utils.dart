import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsergo/constants.dart';

class TsergoButton extends StatelessWidget {
  final String buttonName;
  final String routePath;
  const TsergoButton(
      {super.key, required this.buttonName, required this.routePath});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        GoRouter.of(context).go(routePath);
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
  final String hintText;
  final bool isPassword;
  const TextInputField(
      {super.key, required this.hintText, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 48 / 800,
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Expanded(
          child: Row(
            children: [
              TextField(
                obscureText:
                    isPassword, // If it's a password field, obscure the text
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: GoogleFonts.inter(
                      color: const Color(0xFF808080), fontSize: 16.0),
                  border: InputBorder.none,
                ),
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
