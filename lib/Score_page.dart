import 'package:flutter/material.dart';
import 'package:quiz_app2/main.dart';

class ScoreRoute extends StatelessWidget {
  const ScoreRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[500],
        title: TEXT('Quizzz',0.0,28.0),
        centerTitle: true,
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TEXT('IT WAS A PLEASURE MAKING YOUR KNOWLEDGE ABOUT COMPUTERS STRONG!',1.0,28.0),
            TEXT('WE HOPE TO SEE YOU AGAIN WITH SOME NEW TOPIC!',1.0,28.0),
            TEXT('YOU GAVE CORRECT ANSWERS TO $score QUESTIONS!'
                'And you got $wrong Questions Wrong!',1.0,28.0)
          ],
        ),
      ),
    );
  }
}
