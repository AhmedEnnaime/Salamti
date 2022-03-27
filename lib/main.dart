import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Splash_screen.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(builder: (context)=>MyApp()));
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



