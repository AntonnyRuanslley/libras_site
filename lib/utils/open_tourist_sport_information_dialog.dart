import 'package:flutter/material.dart';

import 'package:libras_site/themes/my_themes.dart';
import 'package:libras_site/widgets/homePage/tourist_spot_information.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

openTouristSportInformationDialog({
  required String title,
  required Map<String, String> images,
  required String videoId,
  required BuildContext context,
}) {
  final controller = YoutubePlayerController.fromVideoId(
    videoId: videoId,
    autoPlay: false,
    params: const YoutubePlayerParams(showFullscreenButton: true),
  );

  showDialog(
    context: context,
    builder: (context) {
      return YoutubePlayerScaffold(
        controller: controller,
        aspectRatio: 16 / 9,
        builder: (context, player) {
          return Center(
            child: AlertDialog(
              backgroundColor: MyThemes.of(context).primaryBackground,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: MyThemes.of(context).title1.copyWith(
                            color: MyThemes.of(context).primaryText,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      decoration: BoxDecoration(
                        color: MyThemes.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.close,
                        color: MyThemes.of(context).primaryBackground,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              content: SingleChildScrollView(
                child: TourisSpotInformation(
                  images: images,
                  player: player,
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
