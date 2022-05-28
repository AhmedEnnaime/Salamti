import 'package:e_sante/Toxicite_cutanee/Cutanee_survey.dart';
import 'package:e_sante/Toxicite_cutanee/Rash_cutane/Rash_cutane_survey2.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';

class Rash_cutane_survey extends StatefulWidget {

  @override
  State<Rash_cutane_survey> createState() => _Rash_cutane_surveyState();
}

class _Rash_cutane_surveyState extends State<Rash_cutane_survey> {
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
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
                      'Topographie des lésions',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      'Cocher les parties du corps atteintes :',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: WidthScreen/40,top: HeightScreen/40,right: WidthScreen/40),
                    child: Card(
                      margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                      clipBehavior: Clip.antiAlias,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,)
                      ),
                      child: CheckboxListTile(
                        title: TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context)=>AlertDialog(

                                content: Image.asset(
                                  'assets/tronc.jpg',
                                  fit: BoxFit.cover,

                                ),
                              ),
                              barrierDismissible: true,
                            );
                          },
                          child: Text(
                            'Visage et tronc',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black

                            ),
                          ),

                        ),
                        value: Visage,
                        onChanged: (val){
                          setState(() {
                            Visage=val!;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                      padding: EdgeInsets.only(left: WidthScreen/40,top: HeightScreen/250,right: WidthScreen/40),
                      child: Card(
                        margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                        clipBehavior: Clip.antiAlias,
                        shape: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,)
                        ),
                        child:CheckboxListTile(
                          title: TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context)=>AlertDialog(

                                  content: Image.asset(
                                    'assets/plis.jpg',
                                    fit: BoxFit.cover,

                                  ),
                                ),
                                barrierDismissible: true,
                              );
                            },
                            child: Text(
                              'Plis',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black

                              ),
                            ),

                          ),
                          value: Plis,
                          onChanged: (val){
                            setState(() {
                              Plis=val!;
                            });
                          },
                        ),
                      )
                  ),
                  SizedBox(height: 10,),
                  Padding(
                      padding: EdgeInsets.only(left: WidthScreen/40,top: HeightScreen/250,right: WidthScreen/40),
                      child: Card(
                        margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                        clipBehavior: Clip.antiAlias,
                        shape: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,)
                        ),
                        child:CheckboxListTile(
                          title: TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context)=>AlertDialog(

                                  content: Image.asset(
                                    'assets/fines.jpg',
                                    fit: BoxFit.cover,

                                  ),
                                ),
                                barrierDismissible: true,
                              );
                            },
                            child: Text(
                              'Peaux fines',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black

                              ),
                            ),

                          ),
                          value: Peaux,
                          onChanged: (val){
                            setState(() {
                              Peaux=val!;
                            });
                          },
                        ),
                      )
                  ),
                  SizedBox(height: 30,),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left:WidthScreen/30,top: HeightScreen/90,bottom: HeightScreen/90),
                      child: TextFormField(
                        controller: autre,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Autre",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Cutanee_survey()));

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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Rash_cutane_survey2()));

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
        ) ,
      ),
    );
  }
}
