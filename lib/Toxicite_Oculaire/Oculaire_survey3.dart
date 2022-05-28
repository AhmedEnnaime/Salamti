import 'package:e_sante/Toxicite_Oculaire/Oculaire_hopital.dart';
import 'package:e_sante/Toxicite_Oculaire/Oculaire_survey2.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Data/Toxicity_Data/Oculaire_Data/Oculaire_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Oculaire_Data/Implement_Oculaire.dart';
import 'package:e_sante/Data/Toxicity_Data/Oculaire_Data/Oculaire_controller.dart';
import 'Oculaire_ordonance.dart';

class Oculaire_survey3 extends StatefulWidget {

  @override
  State<Oculaire_survey3> createState() => _Oculaire_survey3State();
}

class _Oculaire_survey3State extends State<Oculaire_survey3> {
  String _getMonthDate(int month) {
    if (month == 01) {
      return 'Janvier';
    } else if (month == 02) {
      return 'Février';
    } else if (month == 03) {
      return 'Mars';
    } else if (month == 04) {
      return 'Avril';
    } else if (month == 05) {
      return 'Mai';
    } else if (month == 06) {
      return 'Juin';
    } else if (month == 07) {
      return 'Juillet';
    } else if (month == 08) {
      return 'Aout';
    } else if (month == 09) {
      return 'Septembre';
    } else if (month == 10) {
      return 'Octobre';
    } else if (month == 11) {
      return 'Novembre';
    } else {
      return 'Decembre';
    }
  }
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    var oculairecontroller = Oculairecontroller(Oculaire_Data());
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              width: WidthScreen,
              height: HeightScreen/3.8,
              color: Colors.pinkAccent[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Toxicité Oculaire',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      'Cocher les propositions que vous sentez :',
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
                            showDialog(
                              context: context,
                              builder: (context)=>AlertDialog(

                                content: Image.asset(
                                  'assets/acuite.jpg',
                                  fit: BoxFit.cover,

                                ),
                              ),
                              barrierDismissible: true,
                            );
                          },
                          child: Text(
                            'Baisse de l’acuité visuelle',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,

                            ),
                          ),

                        ),
                        value: acuite_val,
                        onChanged: (val){
                          setState(() {
                            acuite_val=val!;
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
                              showDialog(
                                context: context,
                                builder: (context)=>AlertDialog(

                                  content: Image.asset(
                                    'assets/fievr.jpg',
                                    fit: BoxFit.cover,

                                  ),
                                ),
                                barrierDismissible: true,
                              );
                            },
                            child: Text(
                              'Fièvre',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,

                              ),
                            ),

                          ),
                          value: fievre_val,
                          onChanged: (val){
                            setState(() {
                              fievre_val=val!;
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
                          title: TextButton(
                            onPressed: () {
                            },
                            child: Text(
                              'Aucun',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: Aucun_oculaire_val,
                          onChanged: (val){
                            setState(() {
                              Aucun_oculaire_val=val!;
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
                            primary: Colors.pinkAccent[100],
                            minimumSize: Size(40, 40),
                            padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Oculaire_survey2()));

                        },
                        child: Text(
                          'Précedent',
                          style: TextStyle(
                              fontSize: 22
                          ),
                        ),
                      ),
                      SizedBox(width: 40,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pinkAccent[100],
                            minimumSize: Size(40, 40),
                            padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                        ),
                        onPressed: () {
                          oculaire_day = DateTime.now();
                          Oculaire oculaire = Oculaire(Frequente_Docetaxel: val23,Apparition: delai_oculaire.text,Evo_duree: Evo_duree_oculaire.text,Toxicity_day:'${oculaire_day?.day} ${_getMonthDate(oculaire_day!.month)} ${oculaire_day?.year}',Rougueur: rougueur_val.toString(),larmoiement: larmoiement_val.toString(),Odeme: odeme_val.toString(),Sensation: sensation_val.toString(),Acuite: acuite_val.toString(),Fievre: fievre_val.toString(),Aucun: Aucun_oculaire_val.toString(),Grade:Oculaire_grading(),Patient_Ip: IP.text);
                          oculairecontroller.postOculaire(oculaire);
                          if(acuite_val == true || fievre_val == true){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Oculaire_hopital()));
                          }else
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Oculaire_ordonnance()));
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
