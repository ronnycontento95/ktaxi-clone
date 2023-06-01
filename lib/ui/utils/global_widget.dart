import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ktaxi_clone/ui/utils/global_assets.dart';
import 'package:ktaxi_clone/ui/utils/global_funtion.dart';

class GlobalWidget {
  /// Global color splash
  SystemUiOverlayStyle colorBarSplash(Color color) {
    return SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: color,
    );
  }

  /// Style text logo in the splash
  Widget styleTextLogo(String title, Color color) {
    return Text(title,
        style: TextStyle(
            fontFamily: GlobalAssets.typeLetterLogo,
            color: color,
            fontSize: GlobalFunction().getAdjustedFontSize(90)));
  }

  /// Style text subtitle
  Widget styleTextSubTitle(
      String title, Color color, double size, TextAlign align) {
    return Text(title,
        style: TextStyle(
            color: color,
            fontSize: GlobalFunction()
                .getAdjustedFontSize(size == 0.0 ? 14.0 : size)),
        textAlign: align);
  }
}