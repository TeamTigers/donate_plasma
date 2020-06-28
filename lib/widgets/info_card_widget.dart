import 'package:donateplasma/constants/color_constants.dart';
import 'package:donateplasma/themes/themes_colors.dart';
import 'package:flutter/material.dart';

class InfoCardWidget extends StatefulWidget {
  final int infoId;
  final String message;
  final Color color;

  InfoCardWidget({this.infoId, this.message, this.color});

  @override
  _InfoCardWidgetState createState() => _InfoCardWidgetState();
}

class _InfoCardWidgetState extends State<InfoCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 12, 40),
      child: Container(
        height: 150.0,
        width: 150.0,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: widget.color
                    .withOpacity(0.6),
                offset: const Offset(1.1, 4.0),
                blurRadius: 8.0),
          ],
          gradient: LinearGradient(
            colors: [
              widget.color,
              kPrimaryColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(8.0),
            bottomLeft: Radius.circular(8.0),
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(45.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 5, 0),
              child: Text(widget.message, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 14.5),),
            )
          ],
        ),
      ),
    );
  }
}


