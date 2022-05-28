import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Digestive_survey.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_survey2.dart';

class Nausees extends StatefulWidget {

  @override
  State<Nausees> createState() => _NauseesState();
}

class _NauseesState extends State<Nausees> {

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
                          'Moment d’apparition',
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
                            'Avant la cure de la chimiotherapie',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          value: 'Anticipé',
                          groupValue: val,
                          onChanged: (value){
                            setState(() {
                              val=value!;

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
                            'Les 24h premières heures ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          value: 'Aigue',
                          groupValue: val,
                          onChanged: (value){
                            setState(() {
                              val=value!;
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
                            'Après les premières 24h sans limite de fin ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          value: 'retardés',
                          groupValue: val,
                          onChanged: (value){

                            setState(() {
                              val=value!;

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
                            'Persistants malgré un traitement bien mené  ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          value: 'réfractaires',
                          groupValue: val,
                          onChanged: (value){

                            setState(() {
                              val=value!;

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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Digestive_survey()));

                              },
                              child: Text(
                                'Précedent',
                                style: TextStyle(
                                    fontSize: 22
                                ),
                              ),
                            ),
                            SizedBox(width: 40,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.pinkAccent[100],
                                  minimumSize: Size(40, 40),
                                  padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees2()));

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
