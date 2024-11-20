import 'package:terceraclase/models/quiz.dart';

class QuizController{
  int _questionNumber = 0;
  final List<Quiz> _questionBank = [
    Quiz(question: "1????", answer: true),
    Quiz(question: "2????", answer: true),
    Quiz(question: "3????", answer: true),

  ];
  String _getCurrentQuestion(){
   return _questionBank[_questionNumber].question;
  }


}