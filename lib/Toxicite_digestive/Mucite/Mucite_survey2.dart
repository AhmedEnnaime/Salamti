import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey3.dart';

class Mucite2 extends StatefulWidget {

  @override
  State<Mucite2> createState() => _Mucite2State();
}

class _Mucite2State extends State<Mucite2> {

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
                  'Mucite',
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
                      'La déglutition',
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
                        'Normale',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Normale',
                      groupValue: val14,
                      onChanged: (value){

                        setState(() {
                          val14=value!;

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
                        'Douloureuse',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Douloureuse',
                      groupValue: val14,
                      onChanged: (value){

                        setState(() {
                          val14=value!;

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
                        'Impossible ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Impossible ',
                      groupValue: val14,
                      onChanged: (value){

                        setState(() {
                          val14=value!;

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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite()));

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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite3()));
                            mucite_deglutition();
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
