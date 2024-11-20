import 'package:flutter/material.dart';

import 'components/my_button.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({
    super.key,
  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List <Icon> scores = [
    Icon(Icons.check, color: Colors.green,),
    Icon(Icons.close, color: Colors.red,),
  ];

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
                    'Show  Question Here',
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
              Expanded(child:MyButton(buttonText: 'True', buttonColor: Colors.green, onTap: () {  },),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(child: MyButton(buttonText: 'False', buttonColor: Colors.red, onTap: () {  },)),
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
