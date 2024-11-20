import 'package:flutter/material.dart';
import 'package:terceraclase/views/Quiz_Page.dart';


void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: QuizPage(),
    );
  }
}
