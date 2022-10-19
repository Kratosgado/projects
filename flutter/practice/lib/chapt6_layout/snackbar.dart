import 'package:flutter/material.dart';

final SnackBar snackBarOne = const SnackBar(
  content: Text(
    'Alert has been pressed!',
    style: TextStyle(fontSize: 30),
  ),
);
final SnackBar snackBarTwo = const SnackBar(
  content: Text(
    'Search has been pressed!',
    style: TextStyle(fontSize: 30),
  ),
);
final SnackBar snackBarThree = const SnackBar(
  content: Text(
    'Navigation has been pressed!',
    style: TextStyle(fontSize: 30),
  ),
);

final SnackBar snackBarFour = const SnackBar(
  content: Text(
    'You have chosen on. You are at safe zone!',
    style: TextStyle(fontSize: 30),
  ),
);
final SnackBar snackBarFive = const SnackBar(
  content: Text(
    'You have chosen two. You need to be careful!',
    style: TextStyle(fontSize: 30),
  ),
);
final SnackBar snackBarSix = const SnackBar(content: Text(
  'You have chosen three. You are at danger zone!',
  style: TextStyle(fontSize: 30),
));
