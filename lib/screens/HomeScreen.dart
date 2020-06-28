import 'package:donateplasma/animation/FadeAnimation.dart';
import 'package:donateplasma/constants/color_constants.dart';
import 'package:donateplasma/constants/text_style_constants.dart';
import 'package:donateplasma/providers/information.dart';
import 'package:donateplasma/providers/users.dart';
import 'package:donateplasma/widgets/drawerWidget.dart';
import 'package:donateplasma/widgets/info_card_widget.dart';
import 'package:donateplasma/widgets/users_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final information = Provider.of<Information>(context).infoList;
    final users = Provider.of<Users>(context).userList;
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Donor\'s',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.short_text,
            size: 40,
            color: kAccentColor,
          ),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.pan_tool,
              size: 25,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FadeAnimation(
            1.7,
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: information.length,
                  itemBuilder: (ctx, index) => InfoCardWidget(
                        color: information[index].color,
                        message: information[index].message,
                        infoId: information[index].infoId,
                      )),
            ),
          ),
          FadeAnimation(
            1.9,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                  child: Text(
                    'Find donors',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 25, 0),
                  child: Icon(Icons.search),
                ),
              ],
            ),
          ),
          Expanded(
            child: FadeAnimation(
              2.0,
              GridView.builder(
                padding: const EdgeInsets.all(20.0),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1.5 / 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 25.0,
                ),
                itemCount: users.length,
                itemBuilder: (ctx, index) => UsersCard(
                  userDP: users[index].userDP,
                  userId: users[index].userId,
                  userLocation: users[index].userLocation,
                  userName: users[index].userName,
                  userPhone: users[index].userPhone,
                  userBlood: users[index].userBlood,
                ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
