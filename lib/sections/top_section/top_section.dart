import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/sections/top_section/top_component.dart';

class TopSection extends StatefulWidget {
  final ValueChanged<int> onMenuClick;

  const TopSection({
    super.key,
    required this.onMenuClick,
  });

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  late List<bool> _isHovering;

  @override
  void initState() {
    super.initState();
    _isHovering = List.filled(7, false);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(5.0, 3.9),
            blurRadius: 20,
            blurStyle: BlurStyle.normal,
            color: kColorGold,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logologo-simbol.png',
            fit: BoxFit.cover,
            width: 65,
            height: 65,
          ),
          Row(
            children: [
              TopComponent(
                title: 'Home',
                isHovering: _isHovering,
                onPressed: () => widget.onMenuClick(1),
                indexHovering: 0,
              ),
              SizedBox(width: screenSize.width / 15),
              TopComponent(
                title: 'Tratamentos',
                isHovering: _isHovering,
                onPressed: () => widget.onMenuClick(2),
                indexHovering: 1,
              ),
              SizedBox(width: screenSize.width / 15),
              TopComponent(
                title: 'Procedimentos',
                isHovering: _isHovering,
                onPressed: () => widget.onMenuClick(3),
                indexHovering: 2,
              ),
              SizedBox(width: screenSize.width / 15),
              TopComponent(
                title: 'Dra Raissa',
                isHovering: _isHovering,
                onPressed: () => widget.onMenuClick(4),
                indexHovering: 3,
              ),
              SizedBox(width: screenSize.width / 15),
              TopComponent(
                title: 'Localização',
                isHovering: _isHovering,
                onPressed: () => widget.onMenuClick(5),
                indexHovering: 4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
