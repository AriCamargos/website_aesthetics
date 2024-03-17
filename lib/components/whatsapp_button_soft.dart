import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web/repository/whatsapp_repository.dart';
import '../constants.dart';

class WhatsappButtonSoft extends StatelessWidget {
  const WhatsappButtonSoft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;

    return ElevatedButton.icon(
      onPressed: () => openWhatsApp(),
      label: Text(
        'Atendimento online'.toUpperCase(),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: isMobile ? 15 : 20,
        ),
      ),
      icon: const FaIcon(
        FontAwesomeIcons.whatsapp,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: isMobile ? 25 : kDefaultPaddingMd,
          horizontal: isMobile ? 35 : kDefaultPaddingMd * 2.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        backgroundColor: Colors.grey[850],
      ),
    );
  }
}
