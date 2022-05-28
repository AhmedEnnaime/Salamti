import 'package:e_sante/Toxicite_cutanee/Rash_cutane/Rash_cutane_survey.dart';
import 'package:e_sante/Toxicite_cutanee/Rash_cutane/Rash_cutane_survey3.dart';
import 'package:e_sante/variables.dart';
import 'package:flutter/material.dart';

class Rash_cutane_survey2 extends StatefulWidget {

  @override
  State<Rash_cutane_survey2> createState() => _Rash_cutane_survey2State();
}

class _Rash_cutane_survey2State extends State<Rash_cutane_survey2> {
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: WidthScreen,
              height: HeightScreen/3.8,
              color: Colors.pinkAccent[100],
              child: Center(
                child: Text(
                  'Rash cutané',
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
                      'Surface atteinte',
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
                        'Moins de 10%',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Moins de 10%',
                      groupValue: val24,
                      onChanged: (value){

                        setState(() {
                          val24=value!;
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
                        'Entre 10 et 30%',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Entre 10 et 30%',
                      groupValue: val24,
                      onChanged: (value){

                        setState(() {
                          val24=value!;

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
                        'Plus que 30%',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Plus que 30%',
                      groupValue: val24,
                      onChanged: (value){

                        setState(() {
                          val24=value!;

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
                            primary: Colors.pinkAccent[100],
                            minimumSize: Size(40, 40),
                            padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Rash_cutane_survey()));

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
                            primary: Colors.pinkAccent[100],
                            minimumSize: Size(40, 40),
                            padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Rash_cutane_survey3()));

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
