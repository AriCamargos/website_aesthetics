import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web/constants.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';
import 'package:web/sections/components/main_title.dart';
import 'components/checklist.dart';

class AppointmentSection extends StatelessWidget {
  const AppointmentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;

    return Container(
      color: const Color(0xFF18191B),
      constraints: const BoxConstraints(maxWidth: double.maxFinite),
      child: Padding(
        padding: isMobile
            ? const EdgeInsets.symmetric(vertical: 20, horizontal: 20)
            : const EdgeInsets.symmetric(vertical: 50, horizontal: 300),
        child: Column(
          children: [
            const SizedBox(height: kDefaultPaddingMd * 2),
            responsive.value({
              Breakpoints.xs: Padding(
                padding: kSizePageXs,
                child: Column(
                  children: [
                    const MainTitle(
                      title: 'Primeira Consulta',
                      subtitle: 'Como funciona?',
                    ),
                    const CheckList(),
                    const SizedBox(height: 15),
                    Container(
                      decoration:
                          const BoxDecoration(boxShadow: [kDefaultShadowMobile]),
                      child: Image.asset(
                        'assets/images/rai_photo.jpg',
                        //fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Breakpoints.md: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration:
                        const BoxDecoration(boxShadow: [kDefaultShadow]),
                    child: Image.asset(
                      'assets/images/rai_photo.jpg',
                      alignment: Alignment.centerRight,
                      height: 700,
                      //fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 40),
                  const Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MainTitle(
                          title: 'Primeira Consulta',
                          subtitle: 'Como funciona?',
                        ),
                        SizedBox(height: 15),
                        CheckList(),
                      ],
                    ),
                  ),
                ],
              ),
            }),
          ],
        ),
      ),
    );
  }
}
