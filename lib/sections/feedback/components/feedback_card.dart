import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/feedback.dart';

class FeedbackCard extends StatefulWidget {
  final int index;
  const FeedbackCard({
    super.key,
    required this.index,
  });

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = const Duration(milliseconds: 200);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;
    return MouseRegion(
      onEnter: (event) => _handerHover(true),
      onExit: (event) => _handerHover(false),
      child: AnimatedContainer(
        duration: duration,
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddingMd),
        //tamanho de dentro do card
        height: isMobile ? 280 : 330,
        width: isMobile ? 220 : 300,
        decoration: BoxDecoration(
          color: const Color(0xFF18191B),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover || isMobile ) kDefaultShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              //raio da foto ao meio
              offset: const Offset(0, -35),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 8),
                  image: DecorationImage(
                    image: AssetImage(feedback[widget.index].userPic!),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star_rate_rounded,
                    color: Colors.yellow[600], size: 20),
                Icon(Icons.star_rate_rounded,
                    color: Colors.yellow[600], size: 20),
                Icon(Icons.star_rate_rounded,
                    color: Colors.yellow[600], size: 20),
                Icon(Icons.star_rate_rounded,
                    color: Colors.yellow[600], size: 20),
                Icon(Icons.star_rate_rounded,
                    color: Colors.yellow[600], size: 20),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              feedback[widget.index].review!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? 16.0 : 18.0,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            const SizedBox(
              height: kDefaultPaddingMd,
            ),
            Text(
              feedback[widget.index].name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _handerHover(bool hover) {
    setState(() {
      isHover = hover;
    });
  }
}
