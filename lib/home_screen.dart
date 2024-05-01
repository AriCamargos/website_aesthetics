import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web/constants.dart';
import 'package:web/models/questions.dart';
import 'package:web/sections/about/about_section.dart';
import 'package:web/sections/procedure/procedure_section.dart';
import 'package:web/sections/map/map_section.dart';
import 'package:web/sections/questions/components/questions_section.dart';
import 'package:web/sections/appointments/appointments_section.dart';
import 'package:web/sections/feedback/feedback_section.dart';
import 'package:web/sections/footer/footer_section.dart';
import 'package:web/sections/top_section/menu_drawer.dart';
import 'package:web/sections/treatments/treatments_section.dart';
import 'package:web/sections/top_section/top_section.dart';
import 'package:web/repository/whatsapp_repository.dart';

import 'home_screen_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final state = MenuClickState();

    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;
    
    return Scaffold(
      appBar: !isMobile
          ? PreferredSize(
              preferredSize: const Size(double.infinity, 600),
              child: TopSection(onMenuClick: state.onMenuClick),
            )
          : AppBar(
              iconTheme: const IconThemeData(color: kColorGold),
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              title: const Text('Dra Raissa Campos'),
            ),
      drawer: isMobile
          ? MenuDrawer(
              onMenuClick: state.onMenuClick,
            )
          : const SizedBox(),
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
      body: Stack(children: [
        SingleChildScrollView(
          controller: state.scrollController,
          child: Column(
            children: [
              //if (!isMobile) WebCarousel(pathToImages: bannerList),
              const SizedBox(height: kDefaultPaddingMd * 2),
              AppointmentSection(key: state.keySection1),
              TreatmentsSection(key: state.keySection2),
              ProcedureSection(key: state.keySection3),
              if (!isMobile) const FeedbackSection(),
              AboutSection(key: state.keySection4),
              if (!isMobile) QuestionsSection(questions: questions),
              MapSection(key: state.keySection5),
              FooterSection(onMenuClick: state.onMenuClick),
            ],
          ),
        ),
      ]),
    );
  }
}
