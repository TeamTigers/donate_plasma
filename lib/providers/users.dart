import 'package:donateplasma/models/User.dart';
import 'package:flutter/cupertino.dart';

class Users extends ChangeNotifier {
  List<User> _users = [
    User(
      userId: 1,
      userName: 'Shah Fahad',
      userDP: 'assets/images/user0.png',
      userPhone: '+880123456789',
      userLocation: 'Dhaka',
      userBlood: 'O+'
    ),
    User(
        userId: 2,
        userName: 'Zihadul Islam',
        userDP: 'assets/images/user0.png',
        userPhone: '+880123456789',
        userLocation: 'Khulna',
        userBlood: 'O+'
    ),
    User(
        userId: 3,
        userName: 'Sheble Redwan',
        userDP: 'assets/images/user0.png',
        userPhone: '+880123456789',
        userLocation: 'Dhaka',
        userBlood: 'B+'
    ),
    User(
        userId: 4,
        userName: 'Zubayer Alam',
        userDP: 'assets/images/user0.png',
        userPhone: '+880123456789',
        userLocation: 'Chandpur',
        userBlood: 'O-'
    ),
    User(
        userId: 5,
        userName: 'Shunjid Rahman',
        userDP: 'assets/images/user0.png',
        userPhone: '+880123456789',
        userLocation: 'Jamalpur',
        userBlood: 'O+'
    ),
    User(
        userId: 6,
        userName: 'Anindo Shahriar',
        userDP: 'assets/images/user0.png',
        userPhone: '+880123456789',
        userLocation: 'Pabna',
        userBlood: 'A+'
    ),
    User(
        userId: 7,
        userName: 'Ovi Shahriar',
        userDP: 'assets/images/user0.png',
        userPhone: '+880123456789',
        userLocation: 'Pabna',
        userBlood: 'A+'
    ),
    User(
        userId: 8,
        userName: 'Sarker Shahriar',
        userDP: 'assets/images/user0.png',
        userPhone: '+880123456789',
        userLocation: 'Pabna',
        userBlood: 'A+'
    ),
    User(
        userId: 9,
        userName: 'John Doe',
        userDP: 'assets/images/user0.png',
        userPhone: '+880123456789',
        userLocation: 'Pabna',
        userBlood: 'A+'
    ),
    User(
        userId: 10,
        userName: 'Hasib Khan',
        userDP: 'assets/images/user0.png',
        userPhone: '+880123456789',
        userLocation: 'Pabna',
        userBlood: 'A+'
    ),
  ];

  List<User> get userList {
    final baseUserList = [..._users];
    return baseUserList;
  }
}