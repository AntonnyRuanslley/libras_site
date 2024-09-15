import 'package:flutter/material.dart';

import 'package:widget_arrows/widget_arrows.dart';

import 'package:libras_site/themes/my_themes.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Glossário de sinais/termos dos espaços ",
          style: TextStyle(
            color: MyThemes.of(context).primaryBackground,
          ),
        ),
        ArrowElement(
          id: 'sinal-termos',
          targetIds: const ['sinal-turismo'],
          sourceAnchor: Alignment.bottomCenter,
          targetAnchor: Alignment.centerRight,
          color: Colors.cyan,
          child: Text(
            "turísticos ",
            style: TextStyle(
              color: MyThemes.of(context).primaryBackground,
            ),
          ),
        ),
        Text(
          "de ",
          style: TextStyle(
            color: MyThemes.of(context).primaryBackground,
          ),
        ),
        ArrowElement(
          id: 'cidade',
          targetIds: const ['sinal-santa-maria'],
          sourceAnchor: Alignment.bottomCenter,
          targetAnchor: Alignment.centerLeft,
          color: Colors.cyan,
          child: Text(
            "Santa Maria da Boa Vista, Sertão - Pernambuco",
            style: TextStyle(
              color: MyThemes.of(context).primaryBackground,
            ),
          ),
        ),
      ],
    );
  }
}
