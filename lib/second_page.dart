import 'package:flutter/material.dart';
import 'package:quiz_app2/main.dart';
import 'Third_page.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            TEXT('Q. What is fulform of RAM?',1.0,50.0),
            ElevatedButton(onPressed: (){
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('OHHOOO A WRONG ANSWER'),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThirdRoute()),);
            }, child: TEXT('A. Random Across Memory',1.0,20.0)),
            ElevatedButton(onPressed: () {
              score++;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThirdRoute()),);
            }, child: TEXT('B. Random Access Memory',1.0,20.0),),
            ElevatedButton(onPressed: () {
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('OHHOOO A WRONG ANSWER'),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThirdRoute()),);
            }, child: TEXT('C. Random Alternate Memory',1.0,20.0),),
          ],
        ),
      ),
    );
  }
}
