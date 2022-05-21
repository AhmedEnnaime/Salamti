import 'package:e_sante/Toxicite_cutanee/Rash_cutane/Rash_cutane_advices.dart';
import 'package:e_sante/Toxicite_cutanee/Rash_cutane/Rash_cutane_grade2.dart';
import 'package:e_sante/Toxicite_cutanee/Rash_cutane/Rash_cutane_grade3.dart';
import 'package:e_sante/Toxicite_cutanee/Rash_cutane/Rash_cutane_survey3.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';

class Rash_cutane_survey4 extends StatefulWidget {
  const Rash_cutane_survey4({Key? key}) : super(key: key);

  @override
  State<Rash_cutane_survey4> createState() => _Rash_cutane_survey4State();
}

class _Rash_cutane_survey4State extends State<Rash_cutane_survey4> {
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
                      'Signes de surinfection',
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
                      title: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context)=>AlertDialog(

                              content: Image.asset(
                                'assets/simple.png',
                                fit: BoxFit.cover,

                              ),
                            ),
                            barrierDismissible: true,
                          );
                        },
                        child: Text(
                          'Dermatite simple',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                          ),
                        ),

                      ),
                      value: 'Dermatite simple',
                      groupValue: val25,
                      onChanged: (value){

                        setState(() {
                          val25=value!;
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
                      title: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context)=>AlertDialog(

                              content: Image.asset(
                                'assets/bacterienne.png',
                                fit: BoxFit.cover,

                              ),
                            ),
                            barrierDismissible: true,
                          );
                        },
                        child: Text(
                          'Surinfection bactérienne',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                          ),
                        ),

                      ),
                      value: 'Surinfection bactérienne',
                      groupValue: val25,
                      onChanged: (value){

                        setState(() {
                          val25=value!;

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
                      title: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context)=>AlertDialog(

                              content: Image.asset(
                                'assets/mycosique.png',
                                fit: BoxFit.cover,

                              ),
                            ),
                            barrierDismissible: true,
                          );
                        },
                        child: Text(
                          'Surinfection mycosique',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                          ),
                        ),

                      ),
                      value: 'Surinfection mycosique',
                      groupValue: val25,
                      onChanged: (value){

                        setState(() {
                          val25=value!;

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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Rash_cutane_survey3()));

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
                          if(Rash_grade() == 'Grade 3'){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Rash_cutane_grade3()));
                          }else if(Rash_grade() == 'Grade 2'){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Rash_cutane_grade2()));
                          }else
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Rash_cutane_advices()));

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
