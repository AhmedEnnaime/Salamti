import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Digestive_survey.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey2.dart';
import 'package:e_sante/variables.dart';

class Diarrhees extends StatefulWidget {

  @override
  State<Diarrhees> createState() => _DiarrheesState();
}

class _DiarrheesState extends State<Diarrhees> {

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
                  'Diarrhées',
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
                      'Nombre de selles par jour',
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
                        'Moins quatre selles par jour',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Moins quatre selles par jour',
                      groupValue: val6,
                      onChanged: (value){

                        setState(() {
                          val6=value!;

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
                        'Entre quatre et six selles par jour  ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Entre quatre et six selles par jour',
                      groupValue: val6,
                      onChanged: (value){

                        setState(() {
                          val6=value!;

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
                        'Plus que sept selles par jour',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Plus que sept selles par jour',
                      groupValue: val6,
                      onChanged: (value){
                        setState(() {
                          val6=value!;
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees2()));

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
