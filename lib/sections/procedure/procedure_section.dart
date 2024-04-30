import 'package:flutter/material.dart';
import 'package:web/components/whatsapp_button_soft.dart';
import 'package:web/constants.dart';
import 'package:web/models/service.dart';
import 'package:web/sections/components/main_title.dart';
import 'components/procedure_component.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class ProcedureSection extends StatelessWidget {
  const ProcedureSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < kMdBreakpoint;

    final response = Responsive(context);
    return Container(
      color: const Color(0xFF18191B),
      constraints: const BoxConstraints(maxWidth: double.maxFinite),
      child: Padding(
        padding: !isMobile
            ? const EdgeInsets.symmetric(vertical: 30, horizontal: 50)
            : EdgeInsets.zero,
        child: Column(
          children: [
            const MainTitle(
                title: 'Resultado dos Tratamentos',
                subtitle:
                    '''Galeria com antes e depois dos nossos tratamentos '''),
            const SizedBox(height: 20),
            response.value({
              Breakpoints.xs: Column(
                children: services
                    .map(
                      (service) => Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.asset(
                              service.image,
                              filterQuality: FilterQuality.none,
                            ),
                          ),
                          const SizedBox(height: 11),
                          Text(
                            service.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const SizedBox(height: 20),
                        ],
                      ),
                    )
                    .toList(),
              ),
              Breakpoints.md: SizedBox(
                height: 750,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    childAspectRatio: 1.5,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: services.length,
                  itemBuilder: (context, index) => ProcedureComponent(
                    index: index,
                    title: services[index].title,
                    image: services[index].image,
                  ),
                ),
              ),
            }),
            const SizedBox(height: kDefaultPaddingMd * 1.5),
            const WhatsappButtonSoft(),
          ],
        ),
      ),
    );
  }
}
