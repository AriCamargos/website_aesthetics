import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/home_screen.dart';
import 'package:web/sections/about/about_section.dart';
import 'package:web/sections/services/service_section.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      routes: {
        '/about': (context) => const AboutTreatments(),
        '/sevice': (context) => const ServiceSection(),
      },
    );
  }
}
