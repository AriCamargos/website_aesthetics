import 'package:flutter/material.dart';
import 'package:web/constants.dart';

class TopComponent extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final List<bool>? isHovering;
  final int indexHovering;
  final VoidCallback? onPressed;
  const TopComponent({
    super.key,
    this.title,
    required this.isHovering,
    required this.indexHovering,
    this.onPressed,
    this.subtitle,
  });

  @override
  State<TopComponent> createState() => _TopComponentState();
}

class _TopComponentState extends State<TopComponent> {
  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;

    return InkWell(
      onTap: () => widget.onPressed!(),
      onHover: handleHover,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title!,
            style: TextStyle(
              color: widget.isHovering![widget.indexHovering]
                  ? kColorGold
                  : Colors.black45,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          if (isMobile)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Divider(
                color: Colors.black,
              ),
            ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: widget.isHovering![widget.indexHovering],
            child: Container(
              height: 2,
              width: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void handleHover(bool value) {
    setState(() {
      value
          ? widget.isHovering![widget.indexHovering] = true
          : widget.isHovering![widget.indexHovering] = false;
    });
  }
}
