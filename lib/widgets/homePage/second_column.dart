import 'package:flutter/material.dart';

import 'package:libras_site/utils/screen_sizes.dart';
import 'package:libras_site/widgets/custom/image_tile.dart';

class SecondColumn extends StatelessWidget {
  const SecondColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: SizedBox(
            height: ScreenSizes.getDeviceHeight(context) * 0.16,
            width: ScreenSizes.getDeviceWidth(context) * 0.16,
          ),
        ),
        Row(
          children: [
            ImageTile(
              arrowId: 'pedra-mansazeira',
              image: "images/pedra_mansazeira.jpg",
              width: ScreenSizes.getDeviceWidth(context) * 0.13,
              targetIds: ['sinal-pedra-mansazeira'],
              sourceAnchor: Alignment.centerRight,
              targetAnchor: Alignment.centerLeft,
            ),
            SizedBox(width: 30),
            ImageTile(
              arrowId: 'sinal-pedra-mansazeira',
              image: "images/sinal_pedra_mansazeira.jpg",
              fit: BoxFit.fill,
            ),
          ],
        ),
        Row(
          children: [
            ImageTile(
              arrowId: 'casaraoes',
              image: "images/casaroes.jpg",
              width: ScreenSizes.getDeviceWidth(context) * 0.13,
              targetIds: ['sinal-casaraoes'],
              sourceAnchor: Alignment.centerRight,
              targetAnchor: Alignment.centerLeft,
            ),
            SizedBox(width: 30),
            ImageTile(
              arrowId: 'sinal-casaraoes',
              image: "images/sinal_casaroes.jpg",
              fit: BoxFit.fill,
            ),
          ],
        ),
      ],
    );
  }
}
