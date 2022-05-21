import 'package:e_sante/Toxicite_cutanee/Mains/Mains_survey2.dart';
import 'package:e_sante/variables.dart';
import 'package:flutter/material.dart';

class Mains_survey extends StatefulWidget {

  @override
  State<Mains_survey> createState() => _Mains_surveyState();
}

class _Mains_surveyState extends State<Mains_survey> {
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
                      'Topographie',
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
                                'assets/main1.png',
                                fit: BoxFit.cover,

                              ),
                            ),
                            barrierDismissible: true,
                          );
                        },
                        child: Text(
                          '1er état',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black
                          ),
                        ),

                      ),
                      value: 'etat1',
                      groupValue: val26,
                      onChanged: (value){

                        setState(() {
                          val26=value!;
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
                                'assets/main2.jpg',
                                fit: BoxFit.cover,

                              ),
                            ),
                            barrierDismissible: true,
                          );
                        },
                        child: Text(
                          '2ème état',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black
                          ),
                        ),

                      ),
                      value: 'etat2',
                      groupValue: val26,
                      onChanged: (value){

                        setState(() {
                          val26=value!;

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
                                'assets/main3.png',
                                fit: BoxFit.cover,

                              ),
                            ),
                            barrierDismissible: true,
                          );
                        },
                        child: Text(
                          '3ème état',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black
                          ),
                        ),

                      ),
                      value: 'etat3',
                      groupValue: val26,
                      onChanged: (value){

                        setState(() {
                          val26=value!;

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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Mains_survey2()));

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
