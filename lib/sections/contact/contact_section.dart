import 'package:flutter/material.dart';
import 'package:web/components/whatsapp_button.dart';
import 'package:web/constants.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddingMd * 2),
      color: Colors.red[100],
      child: const Column(
        children: [
          Text(
            'Desperte sua beleza',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          Text(
            'Nossa missão é trazer beleza aos nossos clientes e total segurança',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w300,
            ),
          ),
          Divider(height: 600),
          WhatsappButton(),
        ],
      ),
    );
  }
}