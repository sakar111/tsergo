import 'package:flutter/material.dart';
import 'package:tsergo/constants.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: tsergoColor),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.grey),
            hintStyle: TextStyle(color: tsergoColor),)
      ),
      // home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
