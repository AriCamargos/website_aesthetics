import 'package:flutter/material.dart';
import 'package:web/constants.dart';

import 'components/about_section_text.dart';

class AboutTreatments extends StatelessWidget {
  const AboutTreatments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      /*decoration: BoxDecoration(
        //boxShadow: [kDefaultCardShadowDiagonal],
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.red[200]!, Colors.white],
        ),
      ),*/
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      '/images/woman_seat.jpg',
                      alignment: Alignment.centerRight,
                      height: 500,
                      fit: BoxFit.cover,
                      // width: 400,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AboutSectionText(
                      title: 'Como funcionam os tratamentos?',
                      text:
                          '''Cuidadosamente personalizados para as necessidades de cada cliente,utilizamos a associação de diversas técnicas para alcançarmos a beleza rejuvenescida desejada.
Todos os nossos procedimentos visam resultados duradouros através de técnicas validadas e produtos de marcas conhecidas.
              
Oferecemos uma grande variedade de tratamentos, confira alguns:''',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CheckList(),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          /*
                          '''Dra Raissa Campos é cirugiã dentista especilista em saúde pública e procedimentos estéticos.'''
                          ''' \n \nAplicando as mais modernas tecnologias em suas técnicas faciais, além de todo o conforto e atendimento individualizado para as  suas necessidades.'''
                          '''\nGraduada em Odontologia pela FMU'''
                          '''\nEspecialista em saúde pública pela Anhembi Morumbi \n'''
                          '''\nEspecialista em Harmonização Orofacial pelo IBOP''',
                    'Meu propósito é elevar autoestimas por meio da harmonização orofacial.\nQueremos que mulheres se sintam confiantes, exibindo sua beleza autêntica e contagiante. Valorizamos a essência de cada sorriso, transformando vidas.'),
 
          ),*/
        ],
      ),
    );
  }
}
