import 'package:flutter/material.dart';
import 'package:practice/chapt5_widgets/my_stateless_scaffold.dart';
import 'package:practice/chapt6_layout/questions.dart';
import 'package:practice/chapt6_layout/snackbar.dart';

void clickNextPage(BuildContext context){
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

void clickNextQuestion(BuildContext context){
  Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context){

        final questions = [
          Questions(questions: 'Are you impulsive?'),
          Questions(questions: 'Do you get angry easily?'),
          Questions(questions: 'Are you sloth?'),
          Questions(questions: 'Do you cheat others'),
        ];
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: const Text('Know Yourself...'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${questions[1].questions}',
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
                        'I cannot control it.',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  child: Text(
                    'Next Question',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blueGrey,
                    ),
                  ),
                  onPressed: (){
                    clickNextQuestion(context);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.navigate_next),
                  tooltip: 'Next Question',
                  onPressed: (){
                    clickNextQuestion(context);
                  },
                )
              ],
            ),
          ),
        );
      }));
}
