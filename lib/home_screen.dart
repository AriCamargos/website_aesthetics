import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web/constants.dart';
import 'package:web/sections/about/about_section.dart';
import 'package:web/sections/local/local_section.dart';
import 'package:web/sections/questions/components/questions_section.dart';
import 'package:web/sections/treatments/treatments_section.dart';
import 'package:web/sections/feedback/feedback_section.dart';
import 'package:web/sections/footer/footer_section.dart';
import 'package:web/sections/recent_work/recent_work_section.dart';
import 'package:web/sections/services/service_section.dart';
import 'package:web/sections/top_section/top_section.dart';

import 'components/banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 20.0,
        backgroundColor: Colors.green,
        autofocus: true,
        isExtended: true,
        child: const Center(
          child: FaIcon(FontAwesomeIcons.whatsapp),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const TopSection(),
          BannerList(pathToImages: bannerList),
          const SizedBox(height: kDefaultPadding * 2),
          const TreatmentsSection(),
          const AboutSection(),
          const RecentWorkSection(),
          const ServiceSection(),
          const FeedbackSection(),
          const QuestionsSection(),
          const LocalSection(),
          const FooterSection(),
        ]),
      ),
    );
  }
}
