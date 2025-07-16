import 'package:adv_basics/quiz.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    // MaterialApp(
    //   home: Scaffold(
    //     body: Container(
    //       decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //             colors: [
    //               Color.fromARGB(255, 96, 142, 202),
    //               Color.fromARGB(255, 49, 97, 189)
    //             ],
    //           begin: Alignment.topLeft,
    //           end: Alignment.bottomLeft,
    //         )
    //       ),
    //       child: StartScreen(),
    //     )
    //   ),
    // )
    Quiz()
  );
}