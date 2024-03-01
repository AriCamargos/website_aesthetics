import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/home_screen.dart';
import 'package:web/sections/feedback/feedback_section.dart';
import 'package:web/sections/footer/footer_section.dart';
import 'package:web/sections/local/map_section.dart';
import 'package:web/sections/questions/components/questions_section.dart';
import 'package:web/sections/recent_work/recent_work_section.dart';
import 'package:web/sections/top_section/top_section.dart';
import 'package:web/sections/treatments/treatments_section.dart';
import 'package:web/sections/services/service_section.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web/sections/about/about_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: const [
          Breakpoint(start: 0, end: 360, name: 'small_mobile'),
          Breakpoint(start: 361, end: 450, name: MOBILE),
          Breakpoint(start: 451, end: 800, name: TABLET),
          Breakpoint(start: 801, end: 1920, name: DESKTOP),
          Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.quicksandTextTheme(),
      ),
      home: const HomeScreen(),
      routes: {
        '/top': (context) => const TopSection(),
        '/treatments': (context) => const TreatmentsSection(),
        '/about': (context) => const AboutSection(),
        '/work': (context) => const RecentWorkSection(),
        '/sevice': (context) => const ServiceSection(),
        '/feedback': (context) => const FeedbackSection(),
        '/questions': (context) => const QuestionsSection(),
        '/local': (context) => const MapSection(),
        '/footer': (context) => const FooterSection(),
      },
    );
  }
}
