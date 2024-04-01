import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web/constants.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';
import 'package:web/sections/components/main_title.dart';
import 'components/checklist.dart';

class TreatmentsSection extends StatelessWidget {
  const TreatmentsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Container(
      color: const Color(0xFF18191B),
      constraints: const BoxConstraints(maxWidth: double.maxFinite),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 300),
        child: Column(
          children: [
            const SizedBox(height: kDefaultPaddingMd * 2),
            responsive.value({
              /*Breakpoints.xs: Padding(
                padding: kSizePageXs,
                child: Column(
                  children: [
                    Text('Como funciona a '),
                    Text('Primeira Consulta'),
                    const CheckList(),
                    const SizedBox(height: 12),
                    Image.asset(
                      '/images/woman_seat.jpg',
                      alignment: Alignment.centerRight,
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),*/
              Breakpoints.md: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration:
                        const BoxDecoration(boxShadow: [kDefaultShadow]),
                    child: Image.asset(
                      '/images/rai_photo.jpg',
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
                        /*Text(
                          'Como funcionam os tratamentos?',
                          style: Theme.of(context).textTheme.displaySmall,
                          textAlign: TextAlign.left,
                        ),*/
                        MainTitle(
                          title: 'Primeira Consulta',
                          subtitle: 'Como funciona?',
                        ),
                        /*Text(
                          'Como funciona a ',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'Primeira Consulta',
                          style: TextStyle(fontSize: 20),
                        ),*/
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
