import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {

  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  //
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  //
  // void switchScreen(){
  //   setState(() {
  //     activeScreen = QuestionsScreen();
  //   });
  // }

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget switchWidget = StartScreen(switchScreen);
    if(activeScreen == 'questions-screen'){
      switchWidget = QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 22, 30, 151),
                  Color.fromARGB(255, 17, 54, 126),
                ]
            )
          ),
          child: switchWidget,
        ),
      ),
    );
  }
}
