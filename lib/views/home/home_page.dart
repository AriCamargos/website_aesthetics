import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        actions: [
          Menu(
            sectionClick: (section) {
              pageController.animateToPage(
                section,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              scrollDirection: Axis.vertical,
              pageSnapping: false,
              children: [
                Container(
                  color: Colors.grey,
                  height: 500,
                  child: Column(),
                ),
                Container(
                  color: Colors.purple,
                  height: 500,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.black38,
                        height: 60,
                        child: Row(
                          children: const [Text('Serviços')],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 500,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.black38,
                        height: 60,
                        child: Row(
                          children: const [Text('Localização')],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 500,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.black38,
                        height: 60,
                        child: Row(
                          children: const [Text('Contato')],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

typedef SectionCallBack = void Function(int);

class Menu extends StatelessWidget {
  final SectionCallBack sectionClick;

  const Menu({super.key, required this.sectionClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Amortec Amortecedores'.toUpperCase(),
          ),
          TextButton(
            onPressed: () {
              sectionClick(1);
            },
            child: const Text(
              'Serviços',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              sectionClick(2);
            },
            child: const Text(
              'Localização',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              sectionClick(3);
            },
            child: const Text(
              'Contato',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              sectionClick(4);
            },
            child: const Text(
              'Section 1',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
