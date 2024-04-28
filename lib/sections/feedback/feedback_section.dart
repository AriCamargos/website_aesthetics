import 'package:flutter/material.dart';
import 'package:skynexui_responsive_stylesheet/breakpoints/breakpoints.dart';
import 'package:skynexui_responsive_stylesheet/responsive/responsive.dart';
import '../../../constants.dart';
import '../../../models/feedback.dart';
import '../components/main_title.dart';
import 'components/feedback_card.dart';

class FeedbackSection extends StatefulWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  State<FeedbackSection> createState() => _FeedbackSectionState();
}

class _FeedbackSectionState extends State<FeedbackSection> {
  final ScrollController _scrollController = ScrollController();
  bool _showCards = true;
  @override
  Widget build(BuildContext context) {
    final response = Responsive(context);

    return response.value({
      Breakpoints.xs: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainTitle(
                title: 'Quem faz recomenda',
                subtitle:
                    'Confira como os resultados estão encantando nossos clientes',
              ),
              const SizedBox(height: kDefaultPaddingMd),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        _scrollController.animateTo(
                          _scrollController.offset -
                              MediaQuery.of(context).size.width * 0.75,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        );
                        setState(() {
                          _showCards = true;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: kColorGold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 10),
                        child: Row(
                          children: _showCards
                              ? List.generate(
                                  feedback.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(
                                        right: kDefaultPaddingMd),
                                    child: FeedbackCard(index: index),
                                  ),
                                )
                              : [],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: kColorGold,
                      ),
                      onPressed: () {
                        _scrollController.animateTo(
                          _scrollController.offset +
                              MediaQuery.of(context).size.width * 0.75,
                          curve: Curves.easeOut,
                          duration: const Duration(milliseconds: 500),
                        );
                        setState(() {
                          _showCards = true;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Breakpoints.md: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainTitle(
                title: 'Quem faz recomenda',
                subtitle:
                    'Confira como os resultados estão encantando nossos clientes',
              ),
              const SizedBox(height: kDefaultPaddingMd),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        _scrollController.animateTo(
                          _scrollController.offset -
                              MediaQuery.of(context).size.width * 0.75,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        );
                        setState(() {
                          _showCards = true;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: kColorGold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 10),
                        child: Row(
                          children: _showCards
                              ? List.generate(
                                  feedback.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(
                                        right: kDefaultPaddingMd),
                                    child: FeedbackCard(index: index),
                                  ),
                                )
                              : [],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: kColorGold,
                      ),
                      onPressed: () {
                        _scrollController.animateTo(
                          _scrollController.offset +
                              MediaQuery.of(context).size.width * 0.75,
                          curve: Curves.easeOut,
                          duration: const Duration(milliseconds: 500),
                        );
                        setState(() {
                          _showCards = true;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
