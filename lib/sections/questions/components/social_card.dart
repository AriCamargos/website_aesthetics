import 'package:flutter/material.dart';

import '../../../constants.dart';

class SocialCard extends StatefulWidget {
  final String? iconSrc;
  final String? name;
  final Color? color;
  final Function() press;
  const SocialCard({
    super.key,
    required this.iconSrc,
    required this.name,
    required this.color,
    required this.press,
  });

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(microseconds: 200),
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPaddingMd / 20,
            horizontal: kDefaultPaddingMd * 4,
          ),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc!,
                height: 80,
                width: 80,
              ),
              const SizedBox(width: kDefaultPaddingMd),
              Text(widget.name!),
            ],
          ),
        ),
      ),
    );
  }
}
