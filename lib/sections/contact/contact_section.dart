import 'package:flutter/material.dart';
import 'package:web/components/default_button.dart';
import 'package:web/components/section_title.dart';
import 'package:web/constants.dart';

import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('/images/bg_img_2.png'),
        ),
      ),
      child: Column(
        children: const [
          SizedBox(
            height: kDefaultPadding * 2.5,
          ),
          SectionTitle(
            title: 'Me Contate',
            subtitle: 'Para mais informações',
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                color: const Color(0xFFD9FFFC),
                iconSrc: '/images/skype.png',
                name: 'Skype',
                press: () {},
              ),
              SocialCard(
                color: const Color(0xFFE4FFC7),
                iconSrc: '/images/whatsapp.png',
                name: 'Skype',
                press: () {},
              ),
              SocialCard(
                color: const Color(0xFFE8F0F9),
                iconSrc: '/images/messanger.png',
                name: 'Skype',
                press: () {},
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
          const ContactForm()
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Wrap(
      spacing: kDefaultPadding * 2.5,
      runSpacing: kDefaultPadding * 1.5,
      children: [
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: 'Seu Nome',
              hintText: 'Digite seu nome',
            ),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: 'E-mail',
              hintText: 'Digite seu e-mail',
            ),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: 'E-mail',
              hintText: 'Digite seu e-mail',
            ),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: 'E-mail',
              hintText: 'Digite seu e-mail',
            ),
          ),
        ),
        SizedBox(
          //  height: 300 ,
          child: TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: 'Descrição',
              hintText: 'Qual a sua queixa?',
            ),
          ),
        ),
        const SizedBox(
          height: kDefaultPadding * 2,
        ),
        Center(
          child: FittedBox(
            child: DefaultButton(
              text: 'Me Contate',
              image: '/images/contact_icon.png',
              press: () {},
            ),
          ),
        ),
      ],
    ));
  }
}
