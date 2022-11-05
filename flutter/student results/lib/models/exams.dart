import 'package:flutter/material.dart';

class Exams with ChangeNotifier{
  /*
  This class will contain all the functions that can be performed
  on the exams class

   */
  late final Map<String, Map<String, String>> results;
  late final Map<String, String> course_marks;
  late final List<String> courses;

}