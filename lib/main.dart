import 'package:donateplasma/screens/BannerScreen.dart';
import 'package:flutter/material.dart';
import 'package:donateplasma/constants/color_constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor
      ),
      home: BannerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}