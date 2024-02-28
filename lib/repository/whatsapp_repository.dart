import 'package:url_launcher/url_launcher.dart';

void openWhatsApp() async {
  var mensagem = Uri.encodeComponent('Olá! Estou buscando informações sobre os procedimentos estéticos oferecidos e gostaria de agendar um atendimento online. Você poderia me orientar sobre os próximos passos?');
  var whatsappUrl = "https://wa.me/5586994324465?&text=$mensagem";

  if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
    await launchUrl(Uri.parse(whatsappUrl));
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}

void openInstagram() async {
  var messengerUrl = 'https://instagram.com/aricamargos';
  if (await canLaunchUrl(Uri.parse(messengerUrl))) {
    await launchUrl(Uri.parse(messengerUrl));
  } else {
    throw 'Could not launch $messengerUrl';
  }
}

void openFacebook() async {
  var messengerUrl = 'https://facebook.com/ariana.santana.73';
  if (await canLaunchUrl(Uri.parse(messengerUrl))) {
    await launchUrl(Uri.parse(messengerUrl));
  } else {
    throw 'Could not launch $messengerUrl';
  }
}