class Questions {
  final String title;
  final String subtitle;
  Questions({
    required this.title,
    required this.subtitle,
  });
}

List<Questions> questions = [
  Questions(
    title: 'Os tratamentos são seguros? Existem riscos envolvidos?',
    subtitle:
        'Com certeza! Porém, é importante escolher profissionais capacitados. Eventuais riscos são baixos e passageiros, como pequenos hematomas.',
  ),
  Questions(
    title: 'Quanto tempo leva para ver os resultados?',
    subtitle:
        'O tempo para ver os resultados depende do tratamento. Alguns mostram efeitos imediatos, enquanto outros podem levar algumas semanas.',
  ),
  Questions(
    title: 'Os tratamentos são adequados para todas as idades e tipos de pele?',
    subtitle:
        'Sim, nossos tratamentos abrangem diversas idades e tipos de pele, garantindo eficácia e segurança em cada sessão.',
  ),
  Questions(
    title: 'Quais são os cuidados para manter os resultados por mais tempo?',
    subtitle:
        'Proteja sua pele com protetor solar diariamente, hidrate e siga as orientações passadas após o procedimento para manter os resultados de maneira duradoura.',
  ),
];
