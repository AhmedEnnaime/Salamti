import 'package:e_sante/Main_pages/Toxicity.dart';
import 'package:e_sante/Toxicite_arthromyalgique/Arthromyalgique_survey2.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';

class Arthromyalgique_survey extends StatefulWidget {

  @override
  State<Arthromyalgique_survey> createState() => _Arthromyalgique_surveyState();
}

class _Arthromyalgique_surveyState extends State<Arthromyalgique_survey> {
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
                  'Toxicité Arthromyalgique',
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

                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/30,top:HeightScreen/15,right: WidthScreen/30),
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
                                'Survient sous Docetaxel ? ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 4.3,),
                          Padding(
                            padding:  EdgeInsets.only(right: WidthScreen/10000,left: WidthScreen/10000),
                            child: Text(
                              'Oui',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Radio<String>(
                            value: 'Oui',
                            groupValue: val22,
                            onChanged: (value){
                              setState(() {
                                val22=value!;
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
                            groupValue: val22,
                            onChanged: (value){
                              setState(() {
                                val22=value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ) ,
                  ),
                  SizedBox(height: 40,),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: HeightScreen/80,bottom: HeightScreen/60),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: delai_apparition,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Delai d'apparition",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 40,),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: HeightScreen/70,bottom: HeightScreen/70),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: Evo_duree,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Durée d'évolution",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
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
                      SizedBox(width: 50,),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.cyan[900],
                            minimumSize: Size(40, 40),
                            padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Arthromyagique_survey2()));
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
