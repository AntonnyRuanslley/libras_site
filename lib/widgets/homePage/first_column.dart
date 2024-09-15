import 'package:flutter/material.dart';
import 'package:libras_site/utils/screen_sizes.dart';

import 'package:libras_site/widgets/custom/image_tile.dart';

class FirstColumn extends StatelessWidget {
  const FirstColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ImageTile(
          arrowId: 'sinal-turismo',
          image: "images/sinal_turismo.jpg",
          padding: const EdgeInsets.only(right: 15),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            ImageTile(
              arrowId: 'museu-coripos',
              image: "images/museu_coripos.jpg",
              width: ScreenSizes.getDeviceWidth(context) * 0.13,
              targetIds: ['sinal-museu'],
              sourceAnchor: Alignment.centerRight,
              targetAnchor: Alignment.centerLeft,
            ),
            SizedBox(width: 30),
            ImageTile(
              arrowId: 'sinal-museu',
              image: "images/sinal_museu.jpg",
              fit: BoxFit.fill,
            ),
          ],
        ),
        Row(
          children: [
            ImageTile(
              arrowId: 'espaco-serenata',
              image: "images/espaco_serenata.jpg",
              width: ScreenSizes.getDeviceWidth(context) * 0.13,
              targetIds: ['sinal-espaco-serenata'],
              sourceAnchor: Alignment.centerRight,
              targetAnchor: Alignment.centerLeft,
            ),
            SizedBox(width: 30),
            ImageTile(
              arrowId: 'sinal-espaco-serenata',
              image: "images/sinal_espaco_serenata.jpg",
              fit: BoxFit.fill,
            ),
          ],
        ),
      ],
    );
  }
}
