import 'package:flutter/material.dart';

const kTextColor = Color(0xff707070);
const kTextLightColor = Color(0xFF555555);
const kColorGold = Color(0xFFdda90d);

const kDefaultPaddingMd = 20.0;
const kDefaultPaddingXs = 15.0;
const kDefaultTextXs = 18.0;
const kDefaultTextMd = 17.0;

const kSizedWidth = SizedBox(width: 25);
const kSizePageXs = EdgeInsets.all(10);
const double kMdBreakpoint =
    768; // Valor em pixels que representa a largura da tela para dispositivos médios
const double kXsBreakpoint =
    480; // Valor em pixels que representa a largura da tela para dispositivos extra pequenos (móveis)

const kDefaultShadow = BoxShadow(
  offset: Offset(3, 3),
  blurRadius: 20,
  blurStyle: BlurStyle.normal,
  color: kColorGold,
);

final kDefaultShadowMap = BoxShadow(
  offset: const Offset(5, 5),
  blurRadius: 5,
  color: const Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: const Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField design
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(50),
  borderSide: const BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);
