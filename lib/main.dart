import 'package:flutter/material.dart';
import 'package:tsergo/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF8A2BE2)),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF2D3FB),
          // backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontSize: 30.0,
            fontFamily: 'CustomFont',
            color: Color(0xFF8A2BE2),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(size:38)
        ),
      ),
      // home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
