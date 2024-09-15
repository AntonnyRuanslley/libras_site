import 'package:flutter/material.dart';

import 'package:libras_site/widgets/custom/image_tile.dart';

class SeventhColumn extends StatelessWidget {
  const SeventhColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ImageTile(
          arrowId: 'sinal-santa-maria',
          image: "images/sinal_santa_maria.jpg",
        ),
        const ImageTile(
          arrowId: 'monumento',
          image: "images/monumento.jpg",
        ),
        const ImageTile(
          arrowId: 'sinal-monumento',
          image: "images/sinal_monumento.jpg",
        ),
      ],
    );
  }
}
