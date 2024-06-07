import 'package:flutter/material.dart';
import 'package:web/constants.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;
    var theme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: const Color(0xFF18191B),
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: double.maxFinite),
          padding: isMobile
              ? const EdgeInsets.symmetric(vertical: 20, horizontal: 20)
              : const EdgeInsets.symmetric(vertical: 50, horizontal: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Política de Privacidade'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: theme.headlineLarge!.copyWith(color: kColorGold),
                ),
              ),
              const SizedBox(height: 25),
              RichText(
                text: TextSpan(
                  style: theme.titleSmall!.copyWith(color: Colors.white, height: 1.5),
                  children: [
                    const TextSpan(
                      text:
                          'A sua privacidade é importante para nós. É política do draraissacamposs respeitar a sua privacidade em relação a qualquer informação sua que possamos coletar no site draraissacamposs, e outros sites que possuímos e operamos. Solicitamos informações pessoais apenas quando realmente precisamos delas para lhe fornecer um serviço. Fazemo-lo por meios justos e legais, com o seu conhecimento e consentimento. Também informamos por que estamos coletando e como será usado. Apenas retemos as informações coletadas pelo tempo necessário para fornecer o serviço solicitado. Quando armazenamos dados, protegemos dentro de meios comercialmente aceitáveis para evitar perdas e roubos, bem como acesso, divulgação, cópia, uso ou modificação não autorizados. Não compartilhamos informações de identificação pessoal publicamente ou com terceiros, exceto quando exigido por lei. O nosso site pode ter links para sites externos que não são operados por nós. Esteja ciente de que não temos controle sobre o conteúdo e práticas desses sites e não podemos aceitar responsabilidade por suas respectivas políticas de privacidade. Você é livre para recusar a nossa solicitação de informações pessoais, entendendo que talvez não possamos fornecer alguns dos serviços desejados. O uso continuado de nosso site será considerado como aceitação de nossas práticas em torno de privacidade e informações pessoais. Se você tiver alguma dúvida sobre como lidamos com dados do usuário e informações pessoais, entre em contacto connosco.',
                    ),
                    const TextSpan(
                      text: ' O serviço Google AdSense que usamos para veicular publicidade usa um cookie DoubleClick para veicular anúncios mais relevantes em toda a Web e limitar o número de vezes que um determinado anúncio é exibido para você. Para mais informações sobre o Google AdSense, consulte as FAQs oficiais sobre privacidade do Google AdSense. Utilizamos anúncios para compensar os custos de funcionamento deste site e fornecer financiamento para futuros desenvolvimentos. Os cookies de publicidade comportamental usados por este site foram projetados para garantir que você forneça os anúncios mais relevantes sempre que possível, rastreando anonimamente seus interesses e apresentando coisas semelhantes que possam ser do seu interesse. Vários parceiros anunciam em nosso nome e os cookies de rastreamento de afiliados simplesmente nos permitem ver se nossos clientes acessaram o site através de um dos sites de nossos parceiros, para que possamos creditá-los adequadamente e, quando aplicável, permitir que nossos parceiros afiliados ofereçam qualquer promoção que pode fornecê-lo para fazer uma compra.\n\n',
                    ),
                    TextSpan(
                      text: 'Compromisso do Usuário:',
                      style: theme.titleMedium!.copyWith(color: kColorGold),
                    ),
                    const TextSpan(
                      text:
                          '\nO usuário se compromete a fazer uso adequado dos conteúdos e da informação que o draraissacamposs oferece no site e com caráter enunciativo, mas não limitativo:',
                    ),
                    const TextSpan(
                      text:
                          '\nA) Não se envolver em atividades que sejam ilegais ou contrárias à boa fé a à ordem pública;',
                    ),
                    const TextSpan(
                      text:
                          '\nB) Não difundir propaganda ou conteúdo de natureza racista, xenofóbica, Bet Nacional ou azar, qualquer tipo de pornografia ilegal, de apologia ao terrorismo ou contra os direitos humanos;',
                    ),
                    const TextSpan(
                      text:
                          '\nC) Não causar danos aos sistemas físicos (hardwares) e lógicos (softwares) do draraissacamposs, de seus fornecedores ou terceiros, para introduzir ou disseminar vírus informáticos ou quaisquer outros sistemas de hardware ou software que sejam capazes de causar danos anteriormente mencionados.\n\n',
                    ),
                    const TextSpan(
                      text:
                          'Mais informações peça esclarecimento e, como mencionado anteriormente, se houver algo que você não tem certeza se precisa ou não, geralmente é mais seguro deixar os cookies ativados, caso interaja com um dos recursos que você usa em nosso site.',
                    ),
                    TextSpan(
                      text: '\n\nEsta política é efetiva a partir de 2 Junho 2024 14:29',
                      style: theme.titleMedium!.copyWith(color: kColorGold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
