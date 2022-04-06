// ignore_for_file: use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:saglam_shop/pages/tips/getStart.dart';
import 'package:saglam_shop/pages/tips/tips.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:saglam_shop/pages/config.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new GetStart(),
      // ignore: unnecessary_new
      title: new Text(
        'Hoş geldiniz',
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
      ),

      backgroundColor: PrimeryColor,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: () => print("Sagalam online"),
      loaderColor: Colors.red,
    );
  }
}
