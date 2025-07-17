import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {

  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 1;
  void answerQuestion(){
    setState(() {
      currentQuestionIndex++;
    });
  }
  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                currentQuestion.text,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ...currentQuestion.getShuffleAnswers().map(
                (answer){
                  return AnswerButton(answerText: answer, onTap: answerQuestion);
                }
            )
          ],
        )
      )
    );
  }
}