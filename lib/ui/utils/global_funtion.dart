import 'package:flutter/material.dart';

class GlobalFunction {
  static GlobalKey<NavigatorState> contextGlobal = GlobalKey<NavigatorState>();


  /// Fix font size letter
  getAdjustedFontSize(double fontSize) {
    double textScaleFactor =
        MediaQuery.of(GlobalFunction.contextGlobal.currentContext!)
            .textScaleFactor;
    return fontSize / textScaleFactor;
  }

}