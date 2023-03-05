import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app2/main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Introduction()));
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text(
          'QUIZZZ',
          style: TextStyle(
            fontSize: 38.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        )),
      ),
    );
  }
}
