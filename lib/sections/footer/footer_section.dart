import 'package:flutter/material.dart';
import 'package:skynexui_responsive_stylesheet/breakpoints/breakpoints.dart';
import 'package:skynexui_responsive_stylesheet/responsive/responsive.dart';
import 'package:web/repository/api_repository.dart';
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
    final responsive = Responsive(context);

    return responsive.value({
      Breakpoints.xs: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logologo.png',
                height: 150,
                width: 215,
                fit: BoxFit.fitWidth,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MenuButton(
                        text: 'Voltar ao topo',
                        number: 1,
                        colors: Colors.white,
                        onPressed: () => onMenuClick(1),
                        fontSize: 15,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contato',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          ' 11 99496-4414',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'draraissacampos@gmail.com',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Política de privacidade',
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () => openInstagram(),
                            icon: const FaIcon(FontAwesomeIcons.instagram,
                                size: 30, color: kColorGold),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () => openFacebook(),
                            icon: const FaIcon(
                              FontAwesomeIcons.facebookF,
                              size: 23,
                              color: kColorGold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    color: kColorGold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Column(
                    children: [
                      Text(
                        '@ 2024 Copyright Raissa Campos. Todos os direitos reservados.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Desenvolvido por AriCamargos ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Breakpoints.md: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Links Rápidos',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        MenuButton(
                          text: 'Voltar ao topo',
                          number: 1,
                          colors: Colors.white,
                          onPressed: () => onMenuClick(1),
                          fontSize: 15,
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contato',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          '  11 99496-4414',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '   draraissacampos@gmail.com',
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
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                  // const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
              const Divider(color: kColorGold),
              const SizedBox(height: 10),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '@ 2024 Copyright Raissa Campos. Todos os direitos reservados.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Desenvolvido por AriCamargos',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    });
  }
}
