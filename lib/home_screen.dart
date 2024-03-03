import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web/constants.dart';
import 'package:web/sections/about/about_section.dart';
import 'package:web/sections/components/menu.dart';
import 'package:web/sections/local/map_section.dart';
import 'package:web/sections/questions/components/questions_section.dart';
import 'package:web/sections/treatments/treatments_section.dart';
import 'package:web/sections/feedback/feedback_section.dart';
import 'package:web/sections/footer/footer_section.dart';
import 'package:web/sections/recent_work/recent_work_section.dart';
import 'package:web/sections/services/service_section.dart';
import 'package:web/sections/top_section/top_section.dart';
import 'package:web/repository/whatsapp_repository.dart';

import 'components/banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scrollController = ScrollController();

  final keySection1 = GlobalKey();
  final keySection2 = GlobalKey();
  final keySection3 = GlobalKey();
  final keySection4 = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => openWhatsApp(),
        elevation: 20.0,
        backgroundColor: Colors.green,
        autofocus: true,
        isExtended: true,
        child: const Center(
          child: FaIcon(FontAwesomeIcons.whatsapp),
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            TopSection(onMenuClick: _onMenuClick),
            BannerList(pathToImages: bannerList),
            const SizedBox(height: kDefaultPadding * 2),
            TreatmentsSection(key: keySection1),
            const RecentWorkSection(),
            const ServiceSection(),
            AboutSection(key: keySection2),
            const FeedbackSection(),
            const QuestionsSection(),
            MapSection(key: keySection3),
            const FooterSection(),
          ],
        ),
      ),
    );
  }

  void _onMenuClick(int value) {
    final RenderBox renderBox;

    switch (value) {
      case 1:
        renderBox = keySection1.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox = keySection2.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox = keySection3.currentContext!.findRenderObject() as RenderBox;
        break;
        case 4:
        renderBox = keySection4.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception();
    }
    final offset = renderBox.localToGlobal(Offset.zero);
    scrollController.animateTo(offset.dy,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
