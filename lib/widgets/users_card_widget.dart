import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UsersCard extends StatefulWidget {
  final int userId;
  final String userName;
  final String userPhone;
  final String userLocation;
  final String userDP;
  final String userBlood;

  const UsersCard({
    this.userId,
    this.userName,
    this.userPhone,
    this.userLocation,
    this.userDP,
    this.userBlood,
  });

  @override
  _UsersCardState createState() => _UsersCardState();
}

class _UsersCardState extends State<UsersCard> {
  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          title: Center(
            child: Text(
              'Heroic story of ${widget.userName.split(' ')[0]}',
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'I have discussed with the doctor and followed some basics rules like drinking light warm water, drinking green tea with lemon, having steam and taking proper rest.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'Thanks',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.pinkAccent.shade400,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        _showMyDialog(context);
      },
      child: Container(
        height: 200.0,
        width: 150.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(-4, 4),
              blurRadius: 10,
              color: Color(0xFF212121).withOpacity(.2),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset(widget.userDP),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Icon(
                    Icons.textsms,
                    size: 26.0,
                    color: Colors.deepOrange.shade400,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 8),
              child: Row(
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.userAstronaut,
                    size: 16.0,
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    widget.userName,
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 8),
              child: Row(
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.searchLocation,
                    size: 16.0,
                    color: Colors.deepOrangeAccent,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    widget.userLocation,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 2),
              child: Row(
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.heart,
                    size: 16.0,
                    color: Colors.deepOrange,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    widget.userBlood,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.green,
                  ),
                  child: new IconButton(
                    iconSize: 19.0,
                    icon: new Icon(
                      Icons.dialer_sip,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
