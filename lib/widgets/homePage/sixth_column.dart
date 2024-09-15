import 'package:flutter/material.dart';

import 'package:libras_site/utils/screen_sizes.dart';
import 'package:libras_site/widgets/custom/image_tile.dart';

class SixthColumn extends StatelessWidget {
  const SixthColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
         Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: SizedBox(
            height: ScreenSizes.getDeviceHeight(context) * 0.16,
            width: ScreenSizes.getDeviceWidth(context) * 0.16,
          ),
        ),
        const ImageTile(
          arrowId: 'orla',
          image: "images/orla.jpg",
        ),
        const ImageTile(
          arrowId: 'sinal-orla',
          image: "images/sinal_orla.jpg",
        ),
      
      ],
    );
  }
}
