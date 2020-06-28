import 'package:donateplasma/animation/FadeAnimation.dart';
import 'package:donateplasma/constants/text_style_constants.dart';
import 'package:donateplasma/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:donateplasma/constants/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BannerScreen extends StatelessWidget {
  static const routeName = '/banner';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800.0,
      color: kPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 55, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FadeAnimation(
              1.5,
              Container(
                height: 95.0,
                width: 95.0,
                child: Image.asset('assets/images/heart.png'),
              ),
            ),
            FadeAnimation(
              1.6,
              Row(
                children: <Widget>[
                  Text(
                    'Donate',
                    style: kBannerTitleStyle,
                  ),
                  Text(
                    ' Plasma',
                    style: kBannerPlasmaTitleStyle,
                  )
                ],
              ),
            ),
            FadeAnimation(
              1.6,
              Text(
                'Save Life',
                style: kBannerTitleStyle,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            FadeAnimation(
              1.7,
              Text(
                'Recently recovered from Covid-19 ? Help others surviving by donating your plasma. Let\'s fight together to',
                style: kBannerSubTitleStyle,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FadeAnimation(
              1.8,
              Text(
                'SAVE THE WORLD',
                style: kBannerSub02TitleStyle,
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            FadeAnimation(
              1.8,
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 40.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                        },
                        child: Text(
                          'Got it',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'Poppins'
                          ),
                        ),
                        color: kBannerBasicColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


}
