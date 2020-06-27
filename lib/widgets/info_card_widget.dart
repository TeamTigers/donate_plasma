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
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(-4, 4),
              blurRadius: 10,
              color: Color(0xFFFFBF05).withOpacity(.2),
            )
          ],
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
