import 'package:e_sante/Main_pages/Toxicity.dart';
import 'package:e_sante/Toxicite_neurologique/Neurologique_survey2.dart';
import 'package:e_sante/variables.dart';
import 'package:flutter/material.dart';

class Neurologique_survey extends StatefulWidget {

  @override
  State<Neurologique_survey> createState() => _Neurologique_surveyState();
}

class _Neurologique_surveyState extends State<Neurologique_survey> {
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
                  'Toxicité neurologique',
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
                      'Topographie de la neuropathie',
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
                        'Souvent palmo-plantaire',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Souvent palmo-plantaire',
                      groupValue: val21,
                      onChanged: (value){

                        setState(() {
                          val21=value!;

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
                        'Rarement péri-buccale',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Rarement péri-buccale',
                      groupValue: val21,
                      onChanged: (value){

                        setState(() {
                          val21=value!;

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
                        'Atteinte uni ou bilatérale',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Atteinte uni ou bilatérale',
                      groupValue: val21,
                      onChanged: (value){
                        setState(() {
                          val21=value!;
                        });

                      },
                    ),
                  ),
                  SizedBox(height: 60,),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Toxicity()));

                        },
                        child: Text(
                          'Précedent',
                          style: TextStyle(
                              fontSize: 22
                          ),
                        ),
                      ),
                      SizedBox(width: 35,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.cyan[900],
                            minimumSize: Size(40, 40),
                            padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Neurologique_survey2()));

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
