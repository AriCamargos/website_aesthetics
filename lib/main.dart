import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.quicksandTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
