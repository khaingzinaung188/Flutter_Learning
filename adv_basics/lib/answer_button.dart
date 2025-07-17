import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  build(BuildContext context) {
    return ElevatedButton
      (
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 90, 40, 175),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          )
        ),
        onPressed: onTap,
        child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
