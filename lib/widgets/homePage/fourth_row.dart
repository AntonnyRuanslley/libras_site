import 'package:flutter/material.dart';

import 'package:libras_site/themes/my_themes.dart';
import 'package:libras_site/utils/open_tourist_sport_information_dialog.dart';
import 'package:libras_site/utils/screen_sizes.dart';
import 'package:libras_site/widgets/custom/image_tile.dart';

class FourthRow extends StatelessWidget {
  const FourthRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () => openTouristSportInformationDialog(
            title: "Monumento Terra da Serenata",
            images: {
              'image': "images/monumento.jpg",
              'image_sinal': "images/sinal_monumento.jpg",
              'image_sinal_soletrado': "images/sinal_soletrado_monumento.jpg",
            },
            videoId: "oUQv_ZAwEpU",
            context: context,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  ImageTile(
                    arrowId: 'monumento',
                    image: "images/monumento.jpg",
                    width: ScreenSizes.getDeviceWidth(context) * 0.13,
                    targetIds: const ['sinal-monumento'],
                    sourceAnchor: Alignment.centerRight,
                    targetAnchor: Alignment.centerLeft,
                    fit: BoxFit.fill,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  const SizedBox(width: 30),
                  const ImageTile(
                    arrowId: 'sinal-monumento',
                    image: "images/sinal_monumento.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                "Monumento Terra da Serenata",
                style: MyThemes.of(context).subtitle1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
