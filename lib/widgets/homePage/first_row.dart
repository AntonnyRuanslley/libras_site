import 'package:flutter/material.dart';

import 'package:libras_site/widgets/custom/image_tile.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ImageTile(
          arrowId: 'sinal-turismo',
          image: "images/sinal_turismo.jpg",
          title: "Turísmo",
          padding: EdgeInsets.only(right: 15),
        ),
        Spacer(),
        ImageTile(
          arrowId: 'sinal-santa-maria',
          image: "images/sinal_santa_maria.jpg",
          title: "Santa Maria da Boa Vista",
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
