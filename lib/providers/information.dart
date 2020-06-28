import 'package:donateplasma/models/info.dart';
import 'package:donateplasma/themes/themes_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Information extends ChangeNotifier {
  List<Info> _information = [
    Info(
      color: Colors.greenAccent.shade400,
      infoId: 1,
      message: 'Keep social distances when you are outside.'
    ),
    Info(
        color: Colors.deepOrangeAccent.shade400,
        infoId: 2,
        message: 'Use hand sanitizer, mask and gloves to protect yourself.'
    ),
    Info(
        color: Colors.pinkAccent,
        infoId: 3,
        message: 'Avoid smoking and taking other drugs as it will effect your lungs.'
    ),
    Info(
        color: Colors.orangeAccent,
        infoId: 4,
        message: 'Eat healthy foods and do exercise to boost your immune system.'
    ),
    Info(
        color: Colors.greenAccent.shade700,
        infoId: 5,
        message: 'Consult with doctor if you feel ill.'
    ),
    Info(
        color: Colors.deepOrangeAccent.shade400,
        infoId: 6,
        message: 'Read books and spend time with family to avoid depression.'
    ),
  ];

  List<Info> get infoList {
    final baseInfoList = [..._information];
    return baseInfoList;
  }
}