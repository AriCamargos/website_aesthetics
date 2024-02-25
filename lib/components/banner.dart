import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:loop_page_view/loop_page_view.dart';
class BannerList extends StatefulWidget {
  final List<String> pathToImages;

  const BannerList({super.key, 
    required this.pathToImages,
  }) ;

  @override
  State<BannerList> createState() => _CarouselState();
}

class _CarouselState extends State<BannerList> {
  int activePage = 1;
  late LoopPageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = LoopPageController(
      viewportFraction: 0.9,
      initialPage: 1,
    );
    // ignore: prefer-extracting-callbacks
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (activePage < 5) {
        activePage++;
      } else {
        activePage = 0;
      }

      _pageController.animateToPage(
        activePage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    },);
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  List<Widget> indicators(int imagesLength, int currentIndex,) {
    return List<Widget>.generate(
      imagesLength,
      // ignore: prefer-extracting-callbacks
      (index) {
        return Container(
          margin: const EdgeInsets.all(3),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: currentIndex == index ? Colors.red[300] : Colors.red[100],
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }

  AnimatedBuilder imageAnimation(
    PageController animation,
    List<String> images,
    int pagePosition,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (
        context,
        widget,
      ) {
        log("$pagePosition");

        return SizedBox(
          width: double.infinity,
          height: 550,
          child: widget,
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Image.asset(images[pagePosition]),
      ),
    );
  }

  AnimatedContainer slider(List<String> images, int pagePosition, bool active,) {
    final double margin = active ? 10 : 20;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(images[pagePosition]),
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 600,
          child: LoopPageView.builder(
            itemCount: widget.pathToImages.length,
            pageSnapping: true,
            controller: _pageController,
            // ignore: prefer-extracting-callbacks
            onPageChanged: (page) {
              setState(() {
                activePage = page;
              });
            },
            itemBuilder: (
              context,
              pagePosition,
            ) {
              final bool active = pagePosition == activePage;

              return slider(
                widget.pathToImages,
                pagePosition,
                active,
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: indicators(
            widget.pathToImages.length,
            activePage,
          ),
        ),
      ],
    );
  }
}

