import 'package:e_sante/Login/login.dart';
import 'package:e_sante/Doctor/Login/login_medecin.dart';
import 'package:flutter/material.dart';

class Roles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children:[
          Center(
            child: Padding(
              padding:  EdgeInsets.only(top: 90),
              child: Image.asset(
                'assets/Logo circle.png',
              ),
            ),
          ),
          SizedBox(height: 70,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20) ,
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
                  SizedBox(height: 10,),

                  Padding(
                    padding:  EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
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
              SizedBox(width: 30,),
              Column(
                children: [
                  Card(
                    margin: EdgeInsets.only(right: WidthScreen/15) ,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.cyan[900],
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24, 18, 48, 38),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_medecin()));
                          },
                          icon: Icon(
                            Icons.supervised_user_circle,
                            size: 60,
                            color: Colors.white,
                          )

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  Padding(
                    padding:  EdgeInsets.only(right: WidthScreen/15),
                    child: Text(
                      'Medecin',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),


                ],
              ),
            ],
          ),

        ]
      ),

      );
  }
}
