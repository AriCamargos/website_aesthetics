import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSectionText extends StatelessWidget {
  final String text;
  final String? title;
  const AboutSectionText({
    super.key,
    required this.text,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class CheckList extends StatelessWidget {
  const CheckList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> itens = <String>[
      //Dra Raissa Campos é cirugiã dentista especilista em saúde pública e procedimentos estéticos.
      //'Aplicando as mais modernas tecnologias em suas técnicas faciais, além de todo o conforto e atendimento individualizado para as  suas necessidades.',
      /*'Graduada em Odontologia pela FMU',
      'Especialista em saúde pública pela Anhembi Morumbi',
      'Especialista em Harmonização Orofacial pelo IBOP',*/
      'Harmonização Facial',
      'Preenchimento Facial e Labial',
      'Aplicação de Toxina Botulínica',
      'Ultrassom Microfocado (Ultraformer)',
    ];

    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var item in itens)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red[200],
                    size: 30,
                    weight: 30,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    item,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class TitleAndSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const TitleAndSubtitle(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title.toUpperCase(),
          style: GoogleFonts.openSans(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }
}

class SubtitlePrincipal extends StatelessWidget {
  final String title;
  final String? subtitle;
  const SubtitlePrincipal({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subtitle!,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }
}
