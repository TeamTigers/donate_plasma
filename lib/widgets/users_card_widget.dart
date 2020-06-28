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
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  size: 28.0,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
            child: Row(
              children: <Widget>[
                FaIcon(
                  FontAwesomeIcons.userAstronaut,
                  size: 16.0,
                  color: Colors.pinkAccent,
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
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
            child: Row(
              children: <Widget>[
                FaIcon(
                  FontAwesomeIcons.searchLocation,
                  size: 16.0,
                  color: Colors.pinkAccent,
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
                  color: Colors.pinkAccent,
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
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Colors.green,
                ),
                child: new IconButton(
                  iconSize: 15.5,
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
    );
  }


}
