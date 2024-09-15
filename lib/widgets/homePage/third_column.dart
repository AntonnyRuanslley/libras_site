import 'package:flutter/material.dart';
import 'package:libras_site/utils/screen_sizes.dart';

import 'package:libras_site/widgets/custom/image_tile.dart';

class ThirdColumn extends StatelessWidget {
  const ThirdColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ImageTile(
          arrowId: 'sinal-santa-maria',
          image: "images/sinal_santa_maria.jpg",
          
          fit: BoxFit.fill,
        ),
        SizedBox(height: 30),
        Row(
          children: [
            ImageTile(
              arrowId: 'igreja',
              image: "images/igreja.jpg",
              width: ScreenSizes.getDeviceWidth(context) * 0.13,
              targetIds: ['sinal-igreja'],
              sourceAnchor: Alignment.centerRight,
              targetAnchor: Alignment.centerLeft,
            ),
            SizedBox(width: 30),
            ImageTile(
              arrowId: 'sinal-igreja',
              image: "images/sinal_igreja.jpg",
              fit: BoxFit.fill,
            ),
          ],
        ),
        Row(
          children: [
            ImageTile(
              arrowId: 'orla',
              image: "images/orla.jpg",
              width: ScreenSizes.getDeviceWidth(context) * 0.13,
              targetIds: ['sinal-orla'],
              sourceAnchor: Alignment.centerRight,
              targetAnchor: Alignment.centerLeft,
            ),
            SizedBox(width: 30),
            ImageTile(
              arrowId: 'sinal-orla',
              image: "images/sinal_orla.jpg",
              fit: BoxFit.fill,
            ),
          ],
        ),
      ],
    );
  }
}
