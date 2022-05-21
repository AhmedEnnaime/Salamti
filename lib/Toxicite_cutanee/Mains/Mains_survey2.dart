import 'package:e_sante/Toxicite_cutanee/Mains/Mains_grade2.dart';
import 'package:e_sante/Toxicite_cutanee/Mains/Mains_grade3.dart';
import 'package:e_sante/Toxicite_cutanee/Mains/Mains_survey.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';

import 'Mains_advices.dart';

class Mains_survey2 extends StatefulWidget {

  @override
  State<Mains_survey2> createState() => _Mains_survey2State();
}

class _Mains_survey2State extends State<Mains_survey2> {
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: WidthScreen,
              height: HeightScreen/3.8,
              color: Colors.cyan[900],
              child: Center(
                child: Text(
                  'Mians et pieds',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ),
            Container(
              width: WidthScreen,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: WidthScreen/20,top: HeightScreen/30),
                    child: Text(
                      'Impact sur les activités quotidiennes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: RadioListTile<String>(
                      title: Text(
                        'Absente',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Absente',
                      groupValue: val27,
                      onChanged: (value){

                        setState(() {
                          val27=value!;
                        });

                      },
                    ),
                  ),
                  SizedBox(height: 35,),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: RadioListTile<String>(
                      title: Text(
                        'Instrumentale',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Instrumentale',
                      groupValue: val27,
                      onChanged: (value){

                        setState(() {
                          val27=value!;

                        });

                      },
                    ),
                  ),
                  SizedBox(height: 35,),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: RadioListTile<String>(
                      title: Text(
                        'Elémentaire',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Elementaire',
                      groupValue: val27,
                      onChanged: (value){

                        setState(() {
                          val27=value!;

                        });

                      },
                    ),
                  ),
                  SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.cyan[900],
                            minimumSize: Size(40, 40),
                            padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Mains_survey()));

                        },
                        child: Text(
                          'Précedent',
                          style: TextStyle(
                              fontSize: 22
                          ),
                        ),
                      ),
                      SizedBox(width: 50,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.cyan[900],
                            minimumSize: Size(40, 40),
                            padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                        ),
                        onPressed: () {
                          if(Mains_grade() == 'Grade 3'){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mains_grade3()));
                          }else if(Mains_grade() == 'Grade 2'){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mains_grade2()));
                          }else
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Mains_advices()));

                        },
                        child: Text(
                          'Continuer',
                          style: TextStyle(
                              fontSize: 22
                          ),
                        ),
                      ),


                    ],
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
