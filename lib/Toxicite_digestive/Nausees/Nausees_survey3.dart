import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_survey2.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_survey4.dart';

class Nausees3 extends StatefulWidget {

  @override
  State<Nausees3> createState() => _Nausees3State();
}

class _Nausees3State extends State<Nausees3> {


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
              color: Colors.cyan[900],
              child: Center(
                child: Text(
                  'Nausees/Vomissements',
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
                      'Durée par jours',
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
                        'Moins une heure',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Moins une heure',
                      groupValue: val2,
                      onChanged: (value){

                        setState(() {
                          val2=value!;

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
                        'Entre deux et quatre heures  ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Entre deux et quatre heures',
                      groupValue: val2,
                      onChanged: (value){

                        setState(() {
                          val2=value!;

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
                        'Plus que quatre heures   ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Plus que quatre heures',
                      groupValue: val2,
                      onChanged: (value){
                        setState(() {
                          val2=value!;
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees2()));

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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees4()));

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
