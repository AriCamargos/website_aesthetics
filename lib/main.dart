import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/constants.dart';
import 'package:web/home_screen.dart';

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
        textTheme: _buildTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}

TextTheme _buildTheme() {
  var baseTheme = GoogleFonts.fahkwangTextTheme();
  baseTheme.copyWith(
    bodyLarge: const TextStyle(
        fontWeight: FontWeight.w400, fontSize: 10, color: Colors.white),
    headlineLarge: const TextStyle(
        fontWeight: FontWeight.w500, fontSize: 16, color: kColorGold),
  );
  return baseTheme;
}