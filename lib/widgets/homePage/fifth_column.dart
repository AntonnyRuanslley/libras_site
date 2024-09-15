import 'package:flutter/material.dart';

import 'package:libras_site/utils/screen_sizes.dart';
import 'package:libras_site/widgets/custom/image_tile.dart';

class FifthColumn extends StatelessWidget {
  const FifthColumn({super.key});

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
          arrowId: 'igreja',
          image: "images/igreja.jpg",
        ),
        const ImageTile(
          arrowId: 'sinal-igreja',
          image: "images/sinal_igreja.jpg",
        ),
      
      ],
    );
  }
}
