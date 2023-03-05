import 'package:flutter/material.dart';
import 'package:quiz_app2/splash%20_screen.dart';
import 'second_page.dart';
int score =0 ;
int wrong = 0 ;
void main() {
  runApp(const MaterialApp(
    home: Splashscreen(),
  ));
}
class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TEXT('Welcome user!',2.0,25.0),
        TEXT('This is the introductory page',2.0,25.0),
        TEXT('This demo app is made by Kartik Goel',2.0,25.0),
        TEXT('Hope you like it!',2.0,25.0),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            child: const Text('Click me to launch the Quizz!'),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('QUIZ STARTED'),
                    duration: Duration(milliseconds: 100)
                  )
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
            },
          ),
        ),
      ],
    ),
    ),
    );
  }
}

Widget TEXT(String x,double space,double size){
  return Text(
    x,
    style: TextStyle(
      fontSize: size ,
      fontWeight: FontWeight.bold,
      letterSpacing: space,
    ),
  );
}