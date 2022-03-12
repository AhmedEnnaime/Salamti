import 'package:e_sante/Acceuil.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Splash_screen.dart';
import 'package:e_sante/Toxicity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>SplashScreen(),
        'home':(context)=> Acceuil(),

      },
    );
  }
}



