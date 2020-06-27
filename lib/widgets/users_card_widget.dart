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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.asset(widget.userDP),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 2),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  color: Colors.indigoAccent,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  widget.userName,
                  style: TextStyle(
                    fontSize: 14,
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
                Icon(
                  Icons.location_on,
                  color: Colors.greenAccent.shade700,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  widget.userLocation,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 2),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.local_hospital,
                  color: Colors.redAccent,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  widget.userBlood,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
