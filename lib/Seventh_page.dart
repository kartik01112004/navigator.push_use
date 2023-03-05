import 'package:flutter/material.dart';
import 'package:quiz_app2/Score_page.dart';
import 'package:quiz_app2/main.dart';

class SeventhRoute extends StatelessWidget {
  const SeventhRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[1000],
        title: TEXT('Quizzz',0.0,28.0),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TEXT('Q. Computer Moniter is also known as :',1.0,100.0),
            ElevatedButton(onPressed: (){
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('OHHOOO A WRONG ANSWER'),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScoreRoute()),);
            }, child: TEXT('A. DVU',1.0,20.0)),
            ElevatedButton(onPressed: () {
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('OHHOOO A WRONG ANSWER'),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScoreRoute()),);
            }, child: TEXT('B. UVD',1.0,20.0),),
            ElevatedButton(onPressed: () {
              score++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('WOOOHOO A CORRECT ANSWER'),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScoreRoute()),);
            }, child: TEXT('C. VDU',1.0,20.0),),
          ],
        ),
      ),
    );
  }
}

