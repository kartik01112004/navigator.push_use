import 'package:flutter/material.dart';
import 'package:quiz_app2/Sixth_page.dart';
import 'package:quiz_app2/main.dart';

class FifthRoute extends StatelessWidget {
  const FifthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[500],
        title: TEXT('Quizzz',0.0,28.0),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TEXT('Q.What is the fulform of RDBMS',1.0,50.0),
            ElevatedButton(onPressed: (){
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('OHHOOO A WRONG ANSWER'),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SixthRoute()),);
            }, child: TEXT('A. Rotational Database Management Systems',1.0,20.0)),
            ElevatedButton(onPressed: () {
              score++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('WOOOHOO A CORRECT ANSWER'),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SixthRoute()),);
            }, child: TEXT('B. Relational Database Management System',1.0,20.0),),
            ElevatedButton(onPressed: () {
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('OHHOOO A WRONG ANSWER'),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SixthRoute()),);
            }, child: TEXT('C. Rotational Database Management Software',1.0,20.0),)
          ],
        ),
      ),
    );
  }
}
