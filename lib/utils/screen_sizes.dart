import 'dart:io';

import 'package:flutter/material.dart';

class ScreenSizes {
  static double defaultPaddingBottom(BuildContext context) {
    return Platform.isIOS ? MediaQuery.of(context).padding.bottom + 5 : 15;
  }

  static double getDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getDeviceStatucBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getDeviceBottomNavBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static double getDeviceHeightPixel(BuildContext context) {
    return MediaQuery.of(context).size.height *
        MediaQuery.of(context).devicePixelRatio;
  }

  static double getDeviceWidthPixel(BuildContext context) {
    return MediaQuery.of(context).size.width *
        MediaQuery.of(context).devicePixelRatio;
  }
}
