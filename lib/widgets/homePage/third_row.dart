import 'package:flutter/material.dart';
import 'package:libras_site/themes/my_themes.dart';
import 'package:libras_site/utils/open_tourist_sport_information_dialog.dart';
import 'package:libras_site/utils/screen_sizes.dart';

import 'package:libras_site/widgets/custom/image_tile.dart';

class ThirdRow extends StatelessWidget {
  const ThirdRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 25,
      runSpacing: 25,
      children: [
        InkWell(
          onTap: () => openTouristSportInformationDialog(
            title: "Espaço da Serenata",
            images: {
              'image': "images/espaco_serenata.jpg",
              'image_sinal': "images/sinal_espaco_serenata.jpg",
              'image_sinal_soletrado':
                  "images/sinal_soletrado_espaco_serenata.jpg",
            },
            videoId: "5mboiEInK2Y",
            context: context,
          ),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageTile(
                    arrowId: 'espaco-serenata',
                    image: "images/espaco_serenata.jpg",
                    width: ScreenSizes.getDeviceWidth(context) * 0.13,
                    targetIds: const ['sinal-espaco-serenata'],
                    sourceAnchor: Alignment.centerRight,
                    targetAnchor: Alignment.centerLeft,
                    fit: BoxFit.fill,
                    padding: const EdgeInsets.only(right: 10),
                  ),
                  const SizedBox(width: 30),
                  const ImageTile(
                    arrowId: 'sinal-espaco-serenata',
                    image: "images/sinal_espaco_serenata.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                "Espaço da Serenata",
                style: MyThemes.of(context).subtitle1,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => openTouristSportInformationDialog(
            title: "Casarões Antigos",
            images: {
              'image': "images/casaroes.jpg",
              'image_sinal': "images/sinal_casaroes.jpg",
              'image_sinal_soletrado': "images/sinal_soletrado_casaroes.jpg",
            },
            videoId: "PO6jLG1la38",
            context: context,
          ),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageTile(
                    arrowId: 'casaroes',
                    image: "images/casaroes.jpg",
                    width: ScreenSizes.getDeviceWidth(context) * 0.13,
                    targetIds: const ['sinal-casaroes'],
                    sourceAnchor: Alignment.centerRight,
                    targetAnchor: Alignment.centerLeft,
                    fit: BoxFit.fill,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  const SizedBox(width: 30),
                  const ImageTile(
                    arrowId: 'sinal-casaroes',
                    image: "images/sinal_casaroes.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                "Casarões Antigos",
                style: MyThemes.of(context).subtitle1,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => openTouristSportInformationDialog(
            title: "Orla Fluvial",
            images: {
              'image': "images/orla.jpg",
              'image_sinal': "images/sinal_orla.jpg",
              'image_sinal_soletrado': "images/sinal_soletrado_orla.jpg",
            },
            videoId: "G26qJJ-7rac",
            context: context,
          ),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageTile(
                    arrowId: 'orla',
                    image: "images/orla.jpg",
                    width: ScreenSizes.getDeviceWidth(context) * 0.13,
                    targetIds: const ['sinal-orla'],
                    sourceAnchor: Alignment.centerRight,
                    targetAnchor: Alignment.centerLeft,
                    fit: BoxFit.fill,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  const SizedBox(width: 30),
                  const ImageTile(
                    arrowId: 'sinal-orla',
                    image: "images/sinal_orla.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                "Orla Fluvial",
                style: MyThemes.of(context).subtitle1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
