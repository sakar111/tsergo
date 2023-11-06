import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  const TextInputField(
      {super.key, required this.hintText, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 48 / 800,
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
      child: TextField(
        obscureText: isPassword, // If it's a password field, obscure the text
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
              GoogleFonts.inter(color: const Color(0xFF808080), fontSize: 16.0),
          border: InputBorder.none,
        ),
        textAlign: TextAlign.left,
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF2D3FB), // Color at the top
              Color(0xFFFDF9FF), // Color at the center
              Color(0xFFFFFFFF), // Color at the bottom
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.0,
              0.5,
              1.0,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: SizedBox(
                width: screenSize.width * 252 / 360,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: screenSize.width *
                          0.35, // Adjust the width proportionally
                      height: screenSize.width *
                          0.35, // Maintain the same height as the width
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFD9D9D9),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/your_logo.png', // Replace with your image path
                          width: screenSize.width *
                              0.35, // Adjust the width proportionally
                          height: screenSize.width *
                              0.35, // Maintain the same height as the width
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 36 / 800,
                    ),
                    const Text(
                      'TSERGO',
                      style: TextStyle(
                          fontSize: 32.0,
                          fontFamily: 'CustomFont',
                          color: Color(0xFF8A2BE2)),
                    ),
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
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.inter(
                            fontSize: 16.0,
                            color: Color(0xFF8A2BE2),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 32 / 800,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF8A2BE2)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(screenSize.width * 101 / 360,
                                screenSize.height * 44 / 800),
                          ),
                        ),
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.inter(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(
                      height: screenSize.height * 32 / 800,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Register',
                        style: GoogleFonts.inter(
                          fontSize: 18.0,
                          color: const Color(0xFF8A2BE2),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
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
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign In with: ',
                            style: GoogleFonts.inter(
                              fontSize: 18.0,
                              color: const Color(0xFF8A2BE2),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
