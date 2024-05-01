import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/home_screen_state.dart';

class TopSection extends StatefulWidget {
  final ValueChanged<int> onMenuClick;

  TopSection({super.key, required this.onMenuClick});

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  final List _isHovering = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    final state = MenuClickState();
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(5.0, 3.9),
            blurRadius: 50,
            blurStyle: BlurStyle.normal,
            color: Colors.white,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'images/logologo-simbol.png',
              fit: BoxFit.cover,
              width: 60,
              height: 60,
            ),
          ),
          SizedBox(width: screenSize.width / 15),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                setState(() {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
                });
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    color: _isHovering[0] ? kColorGold : Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[0],
                  child: Container(
                    height: 2,
                    width: 20,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: screenSize.width / 15),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                setState(() {
                  value ? _isHovering[1] = true : _isHovering[1] = false;
                });
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Tratamentos',
                  style: TextStyle(
                    color: _isHovering[1] ? kColorGold : Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[1],
                  child: Container(
                    height: 2,
                    width: 20,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: screenSize.width / 15),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                setState(() {
                  value ? _isHovering[2] = true : _isHovering[2] = false;
                });
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Procedimentos',
                  style: TextStyle(
                    color: _isHovering[2] ? kColorGold : Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[2],
                  child: Container(
                    height: 2,
                    width: 20,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: screenSize.width / 15),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                setState(() {
                  value ? _isHovering[3] = true : _isHovering[3] = false;
                });
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Dra Raissa',
                  style: TextStyle(
                    color: _isHovering[3] ? kColorGold : Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[3],
                  child: Container(
                    height: 2,
                    width: 20,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: screenSize.width / 15),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                setState(() {
                  value ? _isHovering[4] = true : _isHovering[4] = false;
                });
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Localização',
                  style: TextStyle(
                    color: _isHovering[4] ? kColorGold : Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[4],
                  child: Container(
                    height: 2,
                    width: 20,
                    color: Colors.blue,
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



             /* MenuButton(
                text: 'Home',
                number: 1,
                colors: Colors.black,
                onPressed: () => onMenuClick(1),
                fontSize: 20,
              ),
              MenuButton(
                text: 'Tratamentos',
                number: 2,
                colors: Colors.black,
                onPressed: () => onMenuClick(2),
                fontSize: 20,
              ),
              MenuButton(
                text: 'Procedimentos',
                number: 3,
                colors: Colors.black,
                onPressed: () => onMenuClick(3),
                fontSize: 20,
              ),
              MenuButton(
                text: 'Dra Raissa',
                number: 4,
                colors: Colors.black,
                onPressed: () => onMenuClick(4),
                fontSize: 20,
              ),
              MenuButton(
                text: 'Localização',
                number: 5,
                colors: Colors.black,
                onPressed: () => onMenuClick(5),
                fontSize: 20,
              ),*/