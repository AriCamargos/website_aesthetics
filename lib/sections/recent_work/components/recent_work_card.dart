import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/recent_work.dart';

class RecentWorkCard extends StatefulWidget {
  final int index;
  final Function() press;
  const RecentWorkCard({
    super.key,
    required this.index, required this.press,
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

    if(isHover){
      boxShadow = [kDefaultCardShadow];
    }

    return InkWell(
      onTap: widget.press,
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow:  boxShadow ,
        ),
        duration: duration,
        child: Row(
          children: [
            Image.asset(recentWork[widget.index].image!),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(recentWork[widget.index].title!),
                    const SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                    Text(
                      recentWork[widget.index].title!,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(height: 1.5),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    const Text(
                      'Ver Detalhes',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
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
