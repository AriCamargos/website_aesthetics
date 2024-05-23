import 'package:flutter/material.dart';
import 'package:web/components/whatsapp_button.dart';
import 'package:web/sections/top_section/top_component.dart';

class MenuDrawer extends StatefulWidget {
  final ValueChanged<int> onMenuClick;

  const MenuDrawer({super.key, required this.onMenuClick});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  late List<bool> _isHovering;

  @override
  void initState() {
    super.initState();
    _isHovering = List.filled(7, false);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/logologo-simbol.png',
                fit: BoxFit.cover,
                width: 60,
                height: 60,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TopComponent(
              title: 'Home',
              isHovering: _isHovering,
              onPressed: () {
                Navigator.pop(context);
                widget.onMenuClick(1);
              },
              indexHovering: 0,
            ),
            TopComponent(
              title: 'Tratamentos',
              isHovering: _isHovering,
              onPressed: () {
                Navigator.pop(context);
                widget.onMenuClick(2);
              },
              indexHovering: 0,
            ),
            TopComponent(
              title: 'Procedimentos',
              isHovering: _isHovering,
              onPressed: () {
                Navigator.pop(context);
                widget.onMenuClick(3);
              },
              indexHovering:0,
            ),
            TopComponent(
              title: 'Dra Raissa',
              isHovering: _isHovering,
              onPressed: () {
                Navigator.pop(context);
                widget.onMenuClick(4);
              },
              indexHovering: 0,
            ),
            const Center(
              child: WhatsappButton(),
            ),
          ],
        ),
      ),
    );
  }
}
