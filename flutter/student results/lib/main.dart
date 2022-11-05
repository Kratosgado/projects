import 'package:flutter/material.dart';
import 'package:student_results/views/reg_screen.dart';

void main() => runApp(StudentApp());

class StudentApp extends StatelessWidget {
  const StudentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Result',
      routes: <String, WidgetBuilder>{
        '/': (context)=>RegisterPage(),
      },
      initialRoute: '/',
    );
  }
}
