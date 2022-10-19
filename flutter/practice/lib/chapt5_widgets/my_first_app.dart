//my_first_app.dart

import 'package:flutter/material.dart';
import 'package:practice/chapt5_widgets/my_stateless_scaffold.dart';
import 'package:practice/chapt5_widgets/my_container.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatelessScaffoldWidget(),
    );
  }
}
