import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:libras_site/themes/my_themes.dart';
import 'package:libras_site/utils/screen_sizes.dart';

class TourisSpotInformation extends StatefulWidget {
  final Map<String, String> images;
  final Widget player;

  const TourisSpotInformation({
    super.key,
    required this.images,
    required this.player,
  });

  @override
  State<TourisSpotInformation> createState() => _TourisSpotInformationState();
}

class _TourisSpotInformationState extends State<TourisSpotInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ScreenSizes.getDeviceHeight(context) * 0.3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/${widget.images['image']}",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 50),
            Column(
              children: [
                SizedBox(
                  height: ScreenSizes.getDeviceHeight(context) * 0.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/${widget.images['image_sinal']}",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  "Sinal",
                  style: MyThemes.of(context).subtitle1.copyWith(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: ScreenSizes.getDeviceWidth(context) * 0.6,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/${widget.images['image_sinal_soletrado']!}",
              fit: BoxFit.contain,
            ),
          ),
        ),
        Text(
          "Datilologia",
          style: MyThemes.of(context).subtitle1.copyWith(fontSize: 18),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: ScreenSizes.getDeviceHeight(context) * 0.6,
          width: ScreenSizes.getDeviceWidth(context) * 0.55,
          child: widget.player,
        ),
      ],
    );
  }
}
