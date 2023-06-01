import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ktaxi_clone/ui/utils/global_assets.dart';
import 'package:ktaxi_clone/ui/utils/global_color.dart';
import 'package:ktaxi_clone/ui/utils/global_label.dart';
import 'package:ktaxi_clone/ui/utils/global_widget.dart';

class PageSplash extends StatefulWidget {
  static String routePage = "PageSpash";

  const PageSplash({Key? key}) : super(key: key);

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        child: Scaffold(
          backgroundColor: GlobalColor.colorPrincipal,
          body: Stack(
            children: [
              imageBackground(),
              nameApp(),
              owner()
            ],

          ),

    ), value: GlobalWidget().colorBarSplash(GlobalColor.colorPrincipal));
  }
  Widget imageBackground(){
    return const Image(image: AssetImage("${GlobalAssets.directionImageInternal}splash.png"));
  }

  Widget nameApp(){
    return Center(
        child: GlobalWidget().styleTextLogo(GlobalLabel.nameApp, GlobalColor.colorLetterTitle));
  }

  Widget owner() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: GlobalWidget().styleTextSubTitle(GlobalLabel.textOwner,
          GlobalColor.colorLetterSubTitle, 0, TextAlign.left),
    );
  }
}
