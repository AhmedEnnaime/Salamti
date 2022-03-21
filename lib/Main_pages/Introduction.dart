import 'package:e_sante/Main_pages/Roles.dart';
import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.fromLTRB(0, 150, 0, 0),
              child: Image.asset(
                  'assets/Logo circle.png',
                    width: 100,
                    height: 100,
              ),
            ),
            SizedBox(height: 20,),
            Text(
                'E-santé',
              style: TextStyle(
                  color: Colors.cyan[900],
                  fontSize: 40,
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding:  EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Text(
                  'Cette application a comme but ',
                style: TextStyle(
                  fontSize: 20,

                ),
              ),
            ),
            SizedBox(height: 7,),
            Padding(
              padding:  EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Text(
                'd’accompagner les patients  ',
                style: TextStyle(
                  fontSize: 20,

                ),
              ),
            ),
            SizedBox(height: 7,),
            Padding(
              padding:  EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Text(
                'présentant une toxicité sous ',
                style: TextStyle(
                  fontSize: 20,

                ),
              ),
            ),
            SizedBox(height: 7,),
            Padding(
              padding:  EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Text(
                'chimiothérapie et proposer une ',
                style: TextStyle(
                  fontSize: 20,

                ),
              ),
            ),
            SizedBox(height: 7,),
            Padding(
              padding:  EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Text(
                'conduite à tenir ',
                style: TextStyle(
                  fontSize: 20,

                ),
              ),
            ),
            SizedBox(height: 40,),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan[900],
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
      ),


    );
  }
}
