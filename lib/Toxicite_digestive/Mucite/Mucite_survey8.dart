import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Mucite_Data/Implement_Mucite.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Mucite_Data/Mucite_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Mucite_Data/Mucite_controller.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_grade2.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_grade3.dart';
import 'package:e_sante/variables.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey2.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey7.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_advices.dart';

class Mucite8 extends StatefulWidget {

  @override
  State<Mucite8> createState() => _Mucite8State();
}

class _Mucite8State extends State<Mucite8> {


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
                      'Les lèvres ',
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
                        'Roses et lises ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'lises',
                      groupValue: val20,
                      onChanged: (value){

                        setState(() {
                          val20=value!;

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
                        'Sèches et fissurés',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Seches',
                      groupValue: val20,
                      onChanged: (value){

                        setState(() {
                          val20=value!;

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
                        'Ulcérations, saignement',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Ulcerations',
                      groupValue: val20,
                      onChanged: (value){

                        setState(() {
                          val20=value!;

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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite7()));

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

                            //mucitecontroller.postMucite(mucite);
                            mucite_levres();
                            final_score = score_voix + score_deglutition + score_salive + score_muqueuses + score_gencives + score_langue + score_dents + score_levres;
                            if(16< final_score){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite_grade3()));
                            }else if(final_score > 8 && final_score <=16){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite_grade2()));
                            }else Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite_advices()));
                          },
                          child: Text(
                            'Terminer',
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
