import 'package:donateplasma/constants/color_constants.dart';
import 'package:donateplasma/providers/information.dart';
import 'package:donateplasma/widgets/info_card_widget.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBannerBasicColor,
        leading: Icon(
          Icons.short_text,
          size: 40,
          color: kAccentColor,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.insert_emoticon,
              size: 30,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

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
                )
              ),
            ),
            Text(
              'Demo Headline 2',
              style: TextStyle(fontSize: 18),
            ),
            Card(
              child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
            ),
          ],
        ),
      ),
    );
  }
}

/*

Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: information.length,
              itemBuilder: (ctx, index) => InfoCardWidget(
                color: information[index].color,
                message: information[index].message,
                infoId: information[index].infoId,
              ),
              scrollDirection: Axis.vertical,
            ),
          ),
        ],
      )
 */
