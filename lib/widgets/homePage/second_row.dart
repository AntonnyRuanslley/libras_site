import 'package:flutter/material.dart';
import 'package:libras_site/themes/my_themes.dart';
import 'package:libras_site/utils/open_tourist_sport_information_dialog.dart';

import 'package:libras_site/utils/screen_sizes.dart';
import 'package:libras_site/widgets/custom/image_tile.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      spacing: 25,
      runSpacing: 20,
      children: [
        InkWell(
          onTap: () => openTouristSportInformationDialog(
            title: "Museu Coripós",
            images: {
              'image': "images/museu_coripos.jpg",
              'image_sinal': "images/sinal_museu.jpg",
              'image_sinal_soletrado': "images/sinal_soletrado_museu.jpg",
            },
            videoId: "kapJI3950_I",
            context: context,
          ),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageTile(
                    arrowId: 'museu-coripos',
                    image: "images/museu_coripos.jpg",
                    width: ScreenSizes.getDeviceWidth(context) * 0.13,
                    targetIds: const ['sinal-museu'],
                    sourceAnchor: Alignment.centerRight,
                    targetAnchor: Alignment.centerLeft,
                    fit: BoxFit.fill,
                    padding: const EdgeInsets.only(right: 10),
                  ),
                  const SizedBox(width: 30),
                  const ImageTile(
                    arrowId: 'sinal-museu',
                    image: "images/sinal_museu.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                "Museu Coripos",
                style: MyThemes.of(context).subtitle1,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => openTouristSportInformationDialog(
            title: "Pedra Masanzeira",
            images: {
              'image': "images/pedra_mansazeira.jpg",
              'image_sinal': "images/sinal_pedra_mansazeira.jpg",
              'image_sinal_soletrado':
                  "images/sinal_soletrado_pedra_mansazeira.jpg",
            },
            videoId: "8UqDm6NI5bQ",
            context: context,
          ),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageTile(
                    arrowId: 'pedra-mansazeira',
                    image: "images/pedra_mansazeira.jpg",
                    width: ScreenSizes.getDeviceWidth(context) * 0.13,
                    targetIds: const ['sinal-pedra-mansazeira'],
                    sourceAnchor: Alignment.centerRight,
                    targetAnchor: Alignment.centerLeft,
                    fit: BoxFit.fill,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  const SizedBox(width: 30),
                  const ImageTile(
                    arrowId: 'sinal-pedra-mansazeira',
                    image: "images/sinal_pedra_mansazeira.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                "Pedra Masanzeira",
                style: MyThemes.of(context).subtitle1,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => openTouristSportInformationDialog(
            title: "Igreja Católica Nossa Senhora da Conceição",
            images: {
              'image': "images/igreja.jpg",
              'image_sinal': "images/sinal_igreja.jpg",
              'image_sinal_soletrado': "images/sinal_soletrado_igreja.jpg",
            },
            videoId: "1FPZ5S5x3Vk",
            context: context,
          ),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageTile(
                    arrowId: 'igreja',
                    image: "images/igreja.jpg",
                    width: ScreenSizes.getDeviceWidth(context) * 0.13,
                    targetIds: const ['sinal-igreja'],
                    sourceAnchor: Alignment.centerRight,
                    targetAnchor: Alignment.centerLeft,
                    fit: BoxFit.fill,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  const SizedBox(width: 30),
                  const ImageTile(
                    arrowId: 'sinal-igreja',
                    image: "images/sinal_igreja.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                "Igreja Católica Nossa Senhora da Conceição",
                style: MyThemes.of(context).subtitle1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
