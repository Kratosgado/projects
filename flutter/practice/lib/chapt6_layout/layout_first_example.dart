import 'package:flutter/material.dart';
import 'package:practice/chapt6_layout/questions.dart';
import 'package:practice/chapt6_layout/snackbar.dart';
import 'package:practice/chapt6_layout/next_page.dart' as next_page;

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class MyStatelessLayoutWidget extends StatelessWidget {
  //const MyStatelessLayoutWidget({Key? key}) : super(key: key);

  final questions = [
    Questions(questions: 'Are you impulsive?'),
    Questions(questions: 'Do you get angry easily?'),
    Questions(questions: 'Are you sloth?'),
    Questions(questions: 'Do you cheat others'),
  ];
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
              next_page.clickNextPage(context);
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
          'Knowledge Test',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('${questions[0].questions}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.00,
                fontStyle: FontStyle.italic,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              padding: EdgeInsets.all(10),
              width: 350,
              child: Card(
                elevation: 20,
                color: Colors.red,
                child: RaisedButton(
                  onPressed: (){
                    scaffoldKey.currentState!.showSnackBar(snackBarFour);
                  },
                  disabledColor: Colors.redAccent,
                  child: Text(
                    'No. Not at all...',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              padding: EdgeInsets.all(10),
              width: 350,
              child: Card(
                elevation: 20,
                color: Colors.red,
                child: RaisedButton(
                  onPressed: (){
                    scaffoldKey.currentState!.showSnackBar(snackBarFive);
                  },
                  disabledColor: Colors.redAccent,
                  child: Text(
                    'I try to control it...',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              padding: EdgeInsets.all(10),
              width: 350,
              child: Card(
                elevation: 20,
                color: Colors.red,
                child: RaisedButton(
                  onPressed: (){
                    scaffoldKey.currentState!.showSnackBar(snackBarSix);
                  },
                  disabledColor: Colors.redAccent,
                  child: Text(
                    'I am very impulsive.',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            RaisedButton(onPressed: (){
              next_page.clickNextQuestion(context);
            },
            child: Text(
              'Next Question',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey,
              ),
            ),),
            IconButton(
              onPressed: (){
              next_page.clickNextQuestion(context);
            },
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Next Question',
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        backgroundColor: Colors.redAccent,
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}