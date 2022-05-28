import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Constipation/Constipation_survey.dart';
import 'package:e_sante/Toxicite_digestive/Constipation/Constipation_survey3.dart';

class Constipation2 extends StatefulWidget {

  @override
  State<Constipation2> createState() => _Constipation2State();
}

class _Constipation2State extends State<Constipation2> {

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
                  'Constipation',
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
                      'Durée d’évolution',
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
                        'Moins un jour',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Moins un jour',
                      groupValue: val12,
                      onChanged: (value){

                        setState(() {
                          val12=value!;

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
                        'Persistante plus de 3 jours',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Persistante plus de 3 jours',
                      groupValue: val12,
                      onChanged: (value){

                        setState(() {
                          val12=value!;

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
                        'Persistante plus de 5 jours',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Persistante plus de 5 jours ',
                      groupValue: val12,
                      onChanged: (value){

                        setState(() {
                          val12=value!;

                        });

                      },
                    ),
                  ),
                  SizedBox(height: 40,),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Constipation()));

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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Constipation3()));

                          },
                          child: Text(
                            'Suivant',
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
