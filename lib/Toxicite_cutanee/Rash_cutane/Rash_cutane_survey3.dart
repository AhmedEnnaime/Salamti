import 'package:e_sante/Toxicite_cutanee/Rash_cutane/Rash_cutane_fievre.dart';
import 'package:e_sante/Toxicite_cutanee/Rash_cutane/Rash_cutane_survey4.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';

import 'Rash_cutane_survey2.dart';

class Rash_cutane_survey3 extends StatefulWidget {

  @override
  State<Rash_cutane_survey3> createState() => _Rash_cutane_survey3State();
}

class _Rash_cutane_survey3State extends State<Rash_cutane_survey3> {
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
      body:SingleChildScrollView(
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
                      'Signes associés',
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
                      'Cocher les signes que vous sentez :',
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

                          },
                          child: Text(
                            'Prurit',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black

                            ),
                          ),

                        ),
                        value: Prurit,
                        onChanged: (val){
                          setState(() {
                            Prurit=val!;
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

                            },
                            child: Text(
                              'Douleur',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: Douleur_rash,
                          onChanged: (val){
                            setState(() {
                              Douleur_rash=val!;
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

                            },
                            child: Text(
                              'Brulure',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: brulure_rash,
                          onChanged: (val){
                            setState(() {
                              brulure_rash=val!;
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

                            },
                            child: Text(
                              'Fièvre',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: Fievre_rash,
                          onChanged: (val){
                            setState(() {
                              Fievre_rash=val!;
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

                            },
                            child: Text(
                              'Impact sur activités quotidiennes',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: impact_rash,
                          onChanged: (val){
                            setState(() {
                              impact_rash=val!;
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
                        controller: delai_rash,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Délai d’apparition  depuis la dernière cure",
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Rash_cutane_survey2()));

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
                          if(Fievre_rash == true){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Rash_cutane_fievre()));
                          }else
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Rash_cutane_survey4()));

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
