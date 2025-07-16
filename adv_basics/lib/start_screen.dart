import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {

  const StartScreen(this.switchFun, {super.key});

  final void Function() switchFun;

  @override
  Widget build (BuildContext context){
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Color.fromARGB(150, 255, 255, 255),//better approach for opacity
            ),
            // Opacity(
            //     opacity: 0.5,
            //     child: Image.asset(
            //       'assets/images/quiz-logo.png',
            //       width: 300,
            //     ),
            // ),
            SizedBox(height: 80),
            Text(
              'Learn Flutter the fun way',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 30),
            OutlinedButton.icon(
                onPressed: switchFun,
                icon: Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                ),
                label: Text('Start Quiz'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                )
            )
          ],
        )
    );
  }
}