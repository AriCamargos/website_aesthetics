import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';
import 'package:web/sections/components/main_title.dart';
import 'components/checklist.dart';
import 'components/treatments_section_text.dart';

class TreatmentsSection extends StatelessWidget {
  const TreatmentsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPaddingMd * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
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
                Image.asset(
                  '/images/rai_photo.jpg',
                  alignment: Alignment.centerRight,
                  height: 700,
                  //fit: BoxFit.cover,
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
    );
  }
}
