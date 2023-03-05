import 'package:flutter/material.dart';
import 'package:quiz_app2/Seventh_page.dart';
import 'package:quiz_app2/main.dart';

class SixthRoute extends StatelessWidget {
  const SixthRoute({Key? key}) : super(key: key);

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
            TEXT('Q. Who was the father of computer?',1.0,50.0),
            ElevatedButton(onPressed: (){
              score++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('WOOOHOO A CORRECT ANSWER'),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SeventhRoute()),);
            }, child: TEXT('A. Charles Babbage',1.0,20.0)),
            ElevatedButton(onPressed: () {
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('OHHOOO A WRONG ANSWER'),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SeventhRoute()),);
            }, child: TEXT('B. Tim Berners-Lee',1.0,20.0),),
            ElevatedButton(onPressed: () {
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('OHHOOO A WRONG ANSWER'),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SeventhRoute()),);
            }, child: TEXT('C. Claude Shannon',1.0,20.0),),
          ],
        ),
      ),
    );
  }
}
