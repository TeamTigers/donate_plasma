import 'package:donateplasma/models/User.dart';
import 'package:donateplasma/providers/information.dart';
import 'package:donateplasma/providers/users.dart';
import 'package:donateplasma/screens/BannerScreen.dart';
import 'package:donateplasma/screens/HomeScreen.dart';
import 'package:donateplasma/screens/edit_profile.dart';
import 'package:donateplasma/screens/story_screen.dart';
import 'package:flutter/material.dart';
import 'package:donateplasma/constants/color_constants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Information(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kAccentColor
        ),
        home: BannerScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen.routeName: (ctx) => HomeScreen(),
          BannerScreen.routeName: (ctx) => BannerScreen(),
          EditProfile.routeName: (ctx) => EditProfile(),
          StoryScreen.routeName: (ctx) => StoryScreen()
        },
      ),
    );
  }
}