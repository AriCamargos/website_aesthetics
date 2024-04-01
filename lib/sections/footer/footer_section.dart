import 'package:flutter/material.dart';
import 'package:web/repository/whatsapp_repository.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/logologo.png',
                height: 150,
                width: 150,
                fit: BoxFit.fitHeight,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Siga nas redes sociais: ',
                    style: TextStyle(color: kColorGold),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => openInstagram(),
                        icon: const FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 40,
                          color: kColorGold,
                        ),
                      ),
                      IconButton(
                        onPressed: () => openFacebook(),
                        icon: const FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 40,
                          color: kColorGold,
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Política de Privacidade',
                        style: TextStyle(color: kColorGold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(width: 20),
            const Expanded(
              child: Column(
                children: [
                  Text(
                    'Links rápidos',
                    style: TextStyle(color: kColorGold),
                  ),
                  Text(
                    'ooi',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'oooi',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              color: kColorGold,
            ),
            /*Text(
              '''@ 2024 Copyright Dra. Raissa. Todos os direitos reservados.''',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Desenvolvido por ...',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 12),
            )*/
            /* const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '@ 2024 Copyright Dra. Raissa. Todos os direitos reservados.',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Desenvolvido por ...',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),*/
            /*responsive.value({
              Breakpoints.xs: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '''@ 2024 Copyright Dra. Raissa. Todos os direitos reservados.''',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Desenvolvido por ...',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            }),*/
          ],
        ),
      ),
    );
  }
}
