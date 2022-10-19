import 'package:flutter/material.dart';
import 'package:practice/chapt6_layout/snackbar_and_page.dart';

class MyNewLayout extends StatelessWidget {
  const MyNewLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: (){
              scaffoldKey.currentState!.showSnackBar(snackBarOne);
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: (){
              scaffoldKey.currentState!.showSnackBar(snackBarTwo);
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next Page',
            onPressed: (){
              clickNextPage(context);
            },
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: (){
            scaffoldKey.currentState!.showSnackBar(snackBarThree);
          },
        ),
        title: Text(
          'War Quiz App',
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25.00),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.00),
                    color: Colors.redAccent,
                  ),
                  child: Icon(Icons.landscape, color: Colors.brown,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 70.00, right: 50.00),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.00),
                    color: Colors.green,
                  ),
                  child: Icon(Icons.keyboard_arrow_down, color: Colors.black,),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50.00, top: 70.00,),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.00),
                    color: Colors.blueAccent,
                  ),
                  child: Icon(Icons.keyboard_arrow_up, color: Colors.black,),
                ),
                ],//stack children
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Take a Quick War Quiz',
                      style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ], //column row children
                ),
                Column(
                  children: [
                    Text(
                      'Answer a few Questions to test your knowledge, Scores will decide..\.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      '...EITHER...',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                    RaisedButton(
                      child: Text(
                        'You are a War Expert',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      disabledColor: Colors.redAccent,
                      onPressed: null,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 24,
                    ),
                    Text(
                      '...OR...',
                      style: TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.deepOrangeAccent
                      ),
                    ),
                    RaisedButton(
                      onPressed: null,
                      disabledColor: Colors.redAccent,
                      child: Text(
                        'You are a Learned Person!',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.audiotrack,
                      color: Colors.green,
                      size: 30,
                    ),
                    Text(
                      '...FINALLY...',
                      style: TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                    RaisedButton(
                      disabledColor: Colors.redAccent,
                      onPressed: null,
                      child: Text(
                        'You need to Study More!',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: RaisedButton(
                                  child: Text(
                                    "Let's Start...",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  disabledColor: Colors.redAccent,
                                  onPressed: (){
                                    clickNextPage(context);
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                    )
                  ], //column children
                ),
          ], //column children
        ),
      ),
    );
  }
}
