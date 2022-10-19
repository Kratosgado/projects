import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
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

clickNextPage(BuildContext context){
  Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Know Yourself...'),
      ),
      body: const Center(
        child: Text(
          'Dig deep into every layer of your mind to find yourself...',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
  ),
  );
}