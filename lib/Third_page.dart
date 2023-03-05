import 'package:flutter/material.dart';
import 'package:quiz_app2/main.dart';
import 'Fourth_page.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

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
            TEXT('Q. Arrange in ascending order the units of memory TB, KB, GB, MB',1.0,50.0),
            ElevatedButton(onPressed: (){
              score++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Center(child: Text('WOOOHOO A CORRECT ANSWER')),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FourthRoute()),);
            }, child: TEXT('A. TB>GB>MB>KB',2.0,20.0)),
            ElevatedButton(onPressed: () {
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Center(child: Text('OHHOOO A WRONG ANSWER')), duration: Duration(milliseconds: 100),
                  )
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FourthRoute()),);
            }, child: TEXT('B. TB>MB>GB>KB',2.0,20.0),),
            ElevatedButton(onPressed: () {
              wrong++;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Center(child: Text('OHHOOO A WRONG ANSWER')),duration: Duration(milliseconds: 100),)
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FourthRoute()),);
            }, child: TEXT('C. GB>MB>KB>TB',2.0,20.0),),
          ],
        ),
      ),
    );
  }
}
