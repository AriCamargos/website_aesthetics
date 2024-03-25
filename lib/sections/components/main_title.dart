import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class MainTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const MainTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;
    final responsive = Responsive(context);

    return Column(
      children: [
        Text(title.toUpperCase(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge),
        const SizedBox(height: 25),
        Text(subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium
            /* TextStyle(
            color: Colors.black,
            fontSize: isMobile ? kDefaultTextXs : kDefaultTextMd,
            fontWeight: FontWeight.w300,
          ),*/
            ),
        Center(
          child: responsive.value(
            {
              Breakpoints.xs: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  indent: 100,
                  endIndent: 100,
                  color: kColorGold,
                ),
              ),
              Breakpoints.md: const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Divider(
                  indent: 200,
                  endIndent: 200,
                  color: kColorGold,
                ),
              ),
            },
          ),
        ),
      ],
    );
  }
}
