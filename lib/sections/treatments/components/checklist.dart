import 'package:flutter/material.dart';

class CheckList extends StatelessWidget {
  const CheckList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> itens = <String>[
      'Harmonização Facial',
      'Preenchimento Facial e Labial',
      'Aplicação de Toxina Botulínica',
      'Ultrassom Microfocado (Ultraformer)',
    ];

    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var item in itens)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Color.fromARGB(255, 211, 201, 201),
                    size: 30,
                    weight: 30,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    item,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class ChecklistAbout extends StatelessWidget {
  const ChecklistAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> itens = <String>[
      'Graduada em Odontologia (FMU)',
      'Especialista em Saúde Pública (UAM)',
      'MBA em Marketing Digital (UAM)',
      'Especialista em Harmonização Orofacial (IBOP)',
    ];

    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var item in itens)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red[200],
                    size: 30,
                    weight: 30,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    item,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}