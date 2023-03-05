import 'package:flutter/material.dart';
import 'package:quiz_app2/main.dart';
import 'Fifth_page.dart';

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[500],
        title: TEXT('Quizzz',0.0,28.0),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TEXT('Q. Who made the start of personal computers?',1.0,50.0),
            ElevatedButton(onPressed: (){
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Center(child: Text('OHHOOO A WRONG ANSWER')),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FifthRoute()),);
            }, child: TEXT('A. Konrad Zuse',1.0,20.0)),
            ElevatedButton(onPressed: () {
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Center(child: Text('OHHOOO A WRONG ANSWER')),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FifthRoute()),);
            }, child: TEXT('B. John Vincent Atanasoff',1.0,20.0),),
            ElevatedButton(onPressed: () {
              score++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Center(child: Text('WOOOHOO A CORRECT ANSWER')),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FifthRoute()),
              );
            }, child: TEXT('C. Ed Roberts',1.0,20.0),)
          ],
        ),
      ),
    );
  }
}