import 'package:e_sante/Main_pages/Registration.dart';
import 'package:e_sante/Login/login.dart';
import 'package:flutter/material.dart';

class Roles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children:[
          Column(
            children: [
              Padding(
                padding:  EdgeInsets.fromLTRB(160, 150, 150, 0),
                child: Image.asset(
                  'assets/Logo circle.png',
                ),
              ),
              SizedBox(height: 50,),

              Card(
                margin: EdgeInsets.fromLTRB(5, 0, 180, 0) ,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.cyan[900],
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24, 18, 48, 38),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                      },
                      icon: Icon(
                        Icons.person,
                        size: 60,
                        color: Colors.white,
                      )

                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.fromLTRB(0, 6, 170, 0),
                child: Text(
                  'Patient',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ],
          ),

        ]


      )

      );
  }
}
