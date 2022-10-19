import 'package:flutter/material.dart';
import 'package:practice/chapt6_layout/my_new_layout.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNewLayout(),
    );
  }
}
