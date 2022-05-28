import 'package:e_sante/Main_pages/Roles.dart';
import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
      body:Column(
          children: [
            Padding(
              padding:  EdgeInsets.fromLTRB(0, 150, 0, 0),
              child: Center(
                child: Image.asset(
                    'assets/Logo_app.png',
                      width: 400,
                      height: 150,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text(
                'E-santé',
              style: TextStyle(
                  color: Colors.pinkAccent[100],
                  fontSize: 40,
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding:  EdgeInsets.only(left: WidthScreen/25,right: WidthScreen/25),
              child: Text(
                  'Cette application a comme but\nd’accompagner les patients\nprésentant une toxicité sous\nchimiothérapie et proposer une\nconduite à tenir ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,

                ),
              ),
            ),

            SizedBox(height: 40,),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent[100],
                  minimumSize: Size(40, 40),
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 13)
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Roles()));
                },
                child: Text(
                    'Continuer',
                    style: TextStyle(
                      fontSize: 25
                    ),
                ),
            )
          ],
        ),



    );
  }
}
