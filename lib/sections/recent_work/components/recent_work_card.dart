import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/recent_work.dart';
import '../../components/main_subtitle.dart';

class RecentWorkCard extends StatefulWidget {
  final int index;
  final Function() press;
  const RecentWorkCard({
    super.key,
    required this.index,
    required this.press,
  });

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  @override
  Widget build(BuildContext context) {
    Duration duration = const Duration(milliseconds: 200);
    bool isHover = false;
    List<BoxShadow> boxShadow = [];

    if (isHover) {
      boxShadow = [kDefaultCardShadow];
    }

    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        height: 200,
        width: 540,
        //decoration: BoxDecoration(
         // color: Colors.white,
        //  borderRadius: BorderRadius.circular(10),
        //  boxShadow: boxShadow,
       // ),
        duration: duration,
        child: Row(
          children: [
            Image.asset(
              recentWork[widget.index].image!,
              fit: BoxFit.cover,
              height: 200,
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                    MainSubtitle(
                      title: recentWork[widget.index].title!,
                      subtitle: recentWork[widget.index].category!,
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    //GestureDetector(
                    //  child: const Text(
                   //     'Ver Detalhes',
                    //    style: TextStyle(decoration: TextDecoration.underline),
                    //  ),
                   // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
