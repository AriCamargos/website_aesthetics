import 'package:flutter/material.dart';
import 'package:web/repository/whatsapp_repository.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web/sections/footer/menu_button.dart';
import '../../constants.dart';

class FooterSection extends StatelessWidget {
  final ValueChanged<int> onMenuClick;
  const FooterSection({
    super.key,
    required this.onMenuClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/logologo.png',
                    height: 120,
                    width: 120,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      MenuButton(
                        text: 'Home',
                        number: 1,
                        colors: Colors.white,
                        onPressed: () => onMenuClick(1),
                        fontSize: 15,
                      ),
                      MenuButton(
                        text: 'Tratamentos',
                        number: 2,
                        colors: Colors.white,
                        onPressed: () => onMenuClick(2),
                        fontSize: 15,
                      ),
                      MenuButton(
                        text: 'Procedimentos',
                        number: 3,
                        colors: Colors.white,
                        onPressed: () => onMenuClick(3),
                        fontSize: 15,
                      ),
                      MenuButton(
                        text: 'Dra Raissa',
                        number: 4,
                        colors: Colors.white,
                        onPressed: () => onMenuClick(4),
                        fontSize: 15,
                      ),
                      MenuButton(
                        text: 'Localização',
                        number: 5,
                        colors: Colors.white,
                        onPressed: () => onMenuClick(5),
                        fontSize: 15,
                      ),
                    ],
                  ),
                  /*Image.asset(
                    'assets/images/logologo.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.fitHeight,
                  ),*/
                ),
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Contato',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        '11 987000000',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'draraissa@gmail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      /*const Column(
                        children: [
                          SizedBox(height: 15),
                          Text(
                            'Política de Privacidade',
                            style: TextStyle(color: kColorGold),
                          ),
                        ],
                      )*/
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              color: kColorGold,
                            ),
                            child: IconButton(
                              onPressed: () => openInstagram(),
                              icon: const FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              color: kColorGold,
                            ),
                            child: IconButton(
                              onPressed: () => openFacebook(),
                              icon: const FaIcon(
                                FontAwesomeIcons.facebookF,
                                size: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: kColorGold,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        'Política de Privacidade',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Termos de uso',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Text(
                  '@ 2024 Copyright Raissa Campos. Todos os direitos reservados.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 15),
                Text(
                  'Desenvolvido por .. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
