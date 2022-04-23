import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey3.dart';

class Diarrhees2 extends StatefulWidget {

  @override
  State<Diarrhees2> createState() => _Diarrhees2State();
}

class _Diarrhees2State extends State<Diarrhees2> {

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
              height:
              HeightScreen/3.8,
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
                      'Durée de survenue',
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
                    child: Padding(
                      padding:  EdgeInsets.only(left: 40),
                      child: TextFormField(
                        controller: duree,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Durée de survenue",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: WidthScreen/70,top: HeightScreen/30),
                    child: Text(
                      'Douleurs abdominales associées ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/40,top:HeightScreen/25,right: WidthScreen/40),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: WidthScreen/50),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Vous avez des douleurs \n abdominales associes ? ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          Text(
                            'Oui',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Radio<String>(
                            value: 'Oui',
                            groupValue: val7,
                            onChanged: (value){
                              setState(() {
                                val7=value!;
                              });

                            },
                          ),
                          Text(
                            'Non',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Radio<String>(
                            value: 'Non',
                            groupValue: val7,
                            onChanged: (value){
                              setState(() {
                                val7=value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: WidthScreen/70,top: HeightScreen/30),
                    child: Text(
                      'Interférent avec la prise alimentaire ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/40,top:HeightScreen/25,right: WidthScreen/40),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: WidthScreen/50),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Cette diarrhees gene\n votre alimentation ? ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 20,),
                          Text(
                            'Oui',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Radio<String>(
                            value: 'Oui',
                            groupValue: val8,
                            onChanged: (value){
                              setState(() {
                                val8=value!;
                              });

                            },
                          ),
                          Text(
                            'Non',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Radio<String>(
                            value: 'Non',
                            groupValue: val8,
                            onChanged: (value){
                              setState(() {
                                val8=value!;
                              });
                            },
                          ),
                        ],
                      ),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees()));

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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees3()));

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
