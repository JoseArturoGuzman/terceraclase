import 'package:terceraclase/models/quiz.dart';

class QuizController{
  int _questionNumber = 0;
  final List<Quiz> _questionBank = [
    Quiz(question: "A pasodoble is a type of Italian pasta sauce.", answer: false),
    Quiz(question: "Dihydrogen Monoxide was banned due to health risks after being discovered in 1983 inside swimming pools and drinking water.", answer: false),
    Quiz(question: "Romanian belongs to the Romance language family, shared with French, Spanish, Portuguese and Italian.", answer: true),

  ];
  String getCurrentQuestion(){
   return _questionBank[_questionNumber].question;
  }
  bool getCurrentAnswer(){
    return _questionBank[_questionNumber].answer;

  }
  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }


}