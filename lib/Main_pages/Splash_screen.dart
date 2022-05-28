import 'dart:async';

import 'package:e_sante/Main_pages/Introduction.dart';
import 'package:e_sante/Main_pages/Toxicity.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Registration.dart';



void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Introduction()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                  "assets/Logo_app.png",
                  width: 150,
                  height: 150,
              ),
            ),
          )
        ],
      ),
    );
  }
}