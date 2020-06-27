import 'package:donateplasma/constants/text_style_constants.dart';
import 'package:flutter/material.dart';
import 'package:donateplasma/constants/color_constants.dart';

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
            Text(
              'Donate Plasma, Save Life',
              style: kBannerTitleStyle,
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'Recently recovered from Covid-19 ? Help others surviving by donating your plasma. Let\'s fight together to',
              style: kBannerSubTitleStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'SAVE THE WORLD',
              style: kBannerSub02TitleStyle,
            ),
            SizedBox(
              height: 65.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 100.0,
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {  },
                      child: Text(
                        'Got it',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'Poppins'
                        ),
                      ),
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          side: BorderSide(color: Theme.of(context).accentColor,)
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
