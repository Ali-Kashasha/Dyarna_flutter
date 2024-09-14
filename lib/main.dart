import 'package:fashion/confirmcode_screen.dart';
import 'package:fashion/home_screen.dart';
import 'package:fashion/newpassword_screen.dart';
import 'package:fashion/signin_screen.dart';
import 'package:fashion/signup_screen.dart';
import 'package:fashion/tempscreen.dart';
import 'package:fashion/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'forgetpassword_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: WelcomeScreen(),
        ),
      ),
    );
  }
}
