import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web/repository/whatsapp_repository.dart';
import '../constants.dart';

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => openWhatsApp(),
      label: Text(
        'Atendimento online'.toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      icon: const FaIcon(FontAwesomeIcons.whatsapp),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.greenAccent[400],
      ),
    );
  }
}
