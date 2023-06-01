import 'package:flutter/cupertino.dart';
import 'package:ktaxi_clone/router/routes_explor.dart';

Map<String,WidgetBuilder> routes() {
  return <String, WidgetBuilder> {
    PageSplash.routePage: (_) => PageSplash(),

  };
}