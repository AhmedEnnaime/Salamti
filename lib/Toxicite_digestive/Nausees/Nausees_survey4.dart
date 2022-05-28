import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_survey3.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_survey5.dart';

class Nausees4 extends StatefulWidget {

  @override
  State<Nausees4> createState() => _Nausees4State();
}

class _Nausees4State extends State<Nausees4> {

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
                      'Nombres de repas par jour',
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
                        'Un seule repas',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Un seule repas',
                      groupValue: val3,
                      onChanged: (value){

                        setState(() {
                          val3=value!;

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
                        'Entre deux et tois repas  ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Entre deux et tois repas',
                      groupValue: val3,
                      onChanged: (value){
                        setState(() {
                          val3=value!;

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
                        'Plus que trois repas  ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Plus que trois repas',
                      groupValue: val3,
                      onChanged: (value){
                        setState(() {
                          val3=value!;

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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees3()));

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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees5()));

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
