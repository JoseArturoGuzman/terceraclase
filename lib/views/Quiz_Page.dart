import 'package:flutter/material.dart';
import 'package:terceraclase/controllers/quiz_controller.dart';

import 'components/my_button.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({
    super.key,
  });

  @override

  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final quizBrain = QuizController();
  List <Icon> scores = [

  ];
  void checkCurrentAnswer(bool userAnswer){
    setState(() {
      final currentAnswer = quizBrain.getCurrentAnswer();
      if(currentAnswer == userAnswer){
        scores.add(Icon(Icons.check, color: Colors.green,),);
      }
      else{
        scores.add(Icon(Icons.close, color: Colors.red,),);

      }
      quizBrain.nextQuestion();
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Text(
            'Quizz App',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [

              Expanded(
              flex:5,
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    quizBrain.getCurrentQuestion(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(child:MyButton( onTap: () {
                checkCurrentAnswer(true);
              },buttonText: 'True', buttonColor: Colors.green),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(child: MyButton(buttonText: 'False', buttonColor: Colors.red, onTap: () {
                checkCurrentAnswer(false);
              },)),
              SizedBox(
                height: 20,
              ),
              Row(
                children:
                  scores,
              )
            ],
          ),
        ));
  }
}
