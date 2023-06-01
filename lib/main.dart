import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:ktaxi_clone/router/routes_pages.dart';
import 'package:ktaxi_clone/ui/pages/page_splash.dart';
import 'package:ktaxi_clone/ui/utils/global_funtion.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  /// Estado de conectividad del dispositivo,
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult>? _connectivitySubscription;

  @override
  Widget build(BuildContext context) {
    if (_connectivity == null) {}
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        navigatorKey: GlobalFunction.contextGlobal,
        debugShowCheckedModeBanner: false,
        home: PageSplash(),
        routes: routes(),
        theme: ThemeData(
          appBarTheme: AppBarTheme(systemOverlayStyle: Platform.isIOS ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.dark),
        ),
      ),
    );
  }
}
