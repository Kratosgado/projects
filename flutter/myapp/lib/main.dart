import "package:flutter/material.dart";

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Animated TextStyle';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Column(
          children: const [
            Center(child: Text("hello world")),
          ],
        ),
      )
    );
  }
}
