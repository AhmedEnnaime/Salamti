import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_advices.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_grade2.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey3.dart';
import 'package:e_sante/Fievre_survey.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey2.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Diarrhees_Data/Diarrhees_controller.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Diarrhees_Data/Implement_Diarrhees.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Diarrhees_Data/Diarrhees_Model.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_grade3.dart';

class Diarrhees4 extends StatefulWidget {
  @override
  State<Diarrhees4> createState() => _Diarrhees4State();
}

class _Diarrhees4State extends State<Diarrhees4> {

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
                    padding:  EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      'Cocher les symptomes que vous sentez :',
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
                        title: Text(
                          'Fatigue importante',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        value: Fatigue_value,
                        onChanged: (val){
                          setState(() {
                            Fatigue_value=val!;
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
                          title: Text(
                            'Déshydratation, Dénutrition',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          value: Denutrition_value,
                          onChanged: (val){
                            setState(() {
                              Denutrition_value=val!;
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
                          title: Text(
                            'Saignement digestif associé',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          value: Saignement_value,
                          onChanged: (val){
                            setState(() {
                              Saignement_value=val!;
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
                        child: CheckboxListTile(
                          title: Text(
                            'Troubles neurologiques',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          value: neurologiques_value,
                          onChanged: (val){
                            setState(() {
                              neurologiques_value=val!;
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
                        child: CheckboxListTile(
                          title: Text(
                            'Fièvre',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          value: Fievre_value,
                          onChanged: (val){
                            setState(() {
                              Fievre_value=val!;
                            });
                          },
                        ),
                      )
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees3()));

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

                            if(Fievre_value == true){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Fievre()));
                              //diarrheescontroller.postDiarrhees(diarrhees);
                            }else if(val6 == 'Plus que sept selles par jour' || Fatigue_value == true || Denutrition_value == true || Saignement_value == true || neurologiques_value == true){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees_grade3()));
                              //diarrheescontroller.postDiarrhees(diarrhees);

                            }else if(val6 == 'Entre quatre et six selles par jour'){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees_grade2()));
                              //diarrheescontroller.postDiarrhees(diarrhees);

                            }else{
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees_advices()));
                              //diarrheescontroller.postDiarrhees(diarrhees);
                            }


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
        ) ,
      ),
    );
  }
}
