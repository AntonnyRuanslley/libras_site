import 'package:flutter/material.dart';

import 'package:widget_arrows/widget_arrows.dart';

import 'package:libras_site/themes/my_themes.dart';
import 'package:libras_site/utils/screen_sizes.dart';

class ImageTile extends StatelessWidget {
  final String arrowId;
  final String image;
  final List<String>? targetIds;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final BoxFit? fit;
  final AlignmentGeometry sourceAnchor;
  final AlignmentGeometry targetAnchor;

  const ImageTile({
    required this.arrowId,
    required this.image,
    this.targetIds,
    this.height,
    this.width,
    this.padding,
    this.fit = BoxFit.contain,
    this.sourceAnchor = Alignment.centerLeft,
    this.targetAnchor = Alignment.centerLeft,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: ArrowElement(
        id: arrowId,
        sourceAnchor: sourceAnchor,
        targetAnchor: targetAnchor,
        targetIds: targetIds,
        color: MyThemes.of(context).primaryColor,
        child: Container(
          height: height ?? ScreenSizes.getDeviceHeight(context) * 0.16,
          width: width ?? ScreenSizes.getDeviceWidth(context) * 0.16,
          padding: padding??const EdgeInsets.only(left: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: fit,
            ),
          ),
        ),
      ),
    );
  }
}
