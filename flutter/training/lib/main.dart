import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  int counter = 0;
  void count() {
    counter++;
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "practice",
      home: Scaffold(
        drawer: UserAccountsDrawerHeader(
          accountName: Text("Nana Mbeah"),
          accountEmail: Text("mbeahessilfieprince@gmail.com"),
          currentAccountPicture: Image(
              image: NetworkImage(
                  "https://www.amazon.nl/Batman-Die-drei-Joker-Bd/dp/3741622435")),
        ),
        
        appBar: AppBar(
          title: Text("Saver"),
        ),
      ),
    );
  }
}
