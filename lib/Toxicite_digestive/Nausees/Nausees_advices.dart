import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_controller.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Implement_Digestive_symptome.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:e_sante/Toxicite_digestive/Constipation/Constipation_survey.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey.dart';

import '../../Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_Model.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Nausees_Data/Implement_Nausees.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_Model.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_controller.dart';

class Nausees_advices extends StatelessWidget {
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
    var nauseescontroller= Nauseescontroller(Nausees_Data());
    var degistive_symptomecontroller = Digestive_symptomecontroller(Digestive_symptome_Data());
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
                  'Conseils aux paients',
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
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Text(
                            'Ces conseils sont attribues',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'aux vomissements et nausees',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  ListTile(
                    leading: Icon(
                      Icons.check_box,
                      size: 40,
                    ),
                    title: Text(
                      'Favoriser l’hydratation ',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Icon(
                      Icons.check_box,
                      size: 40,
                    ),
                    title: Text(
                      'Fractionner l’alimentation: 6 à 8 petits repas',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Icon(
                      Icons.check_box,
                      size: 40,
                    ),
                    title: Text(
                      'Proposer des petits repas froids pour éviter les fortes odeurs',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Icon(
                      Icons.check_box,
                      size: 40,
                    ),
                    title: Text(
                      'Eviter aliments trop gras, frits et trop épicés',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Icon(
                      Icons.check_box,
                      size: 40,
                    ),
                    title: Text(
                      'Privilégier aliments faciles à digérer',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Icon(
                      Icons.check_box,
                      size: 40,
                    ),
                    title: Text(
                      'Proposer de manger lentement',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Icon(
                      Icons.check_box,
                      size: 40,
                    ),
                    title: Text(
                      'Utiliser si besoin, une paille dans une tasse fermée',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent[100],
                          minimumSize: Size(40, 40),
                          padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10)
                      ),
                      onPressed: () {
                        toxicity_day = DateTime.now();
                        Nausees nausees = Nausees(Moment_apparition: val,Nbr_ep: val1,Duree_par_jours: val2,Nbr_repas: val3,Troubles_neurologiques:Troubles_value.toString(),Moins_frequente:Moins_urines_value.toString(),Urines_fonces:Plus_urines_value.toString(),Deshydratation:Deshydratation_value.toString(),Perte_poids:Poids_value.toString(),Traitement: val5,Traitement_desc:Traitement.text,Grade:Nausees_grade(),Patient_Ip: IP.text);
                        Digestive_symptome digestive_symptome = Digestive_symptome(Nausees: Nausees_value.toString(),Vomissements: Vommissements_value.toString(),Diarrhees: Diarrhees_value.toString(),Constipation: Constipation_value.toString(),Mucite: Mucite_value.toString(),Douleurs_abdominales: Douleurs_value.toString(),Modification_gouts:Gouts_value.toString(),Toxicity_day:'${toxicity_day?.day.toString()} ${_getMonthDate(toxicity_day!.month).toString()} ${toxicity_day?.year.toString()}',Nausees_grade:nausees.Grade,Patient_Ip: IP.text );
                        if (Diarrhees_value == true){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees()));

                        }else if (Constipation_value == true){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Constipation()));

                        }else if (Mucite_value==true){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite()));
                        }else {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil()));
                          print(nausees.Grade);
                          nauseescontroller.postNausees(nausees);
                          degistive_symptomecontroller.postDigestive_symptome(digestive_symptome);

                        }


                      },
                      child: Text(
                        'Terminer',
                        style: TextStyle(
                            fontSize: 22
                        ),
                      ),
                    ),
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
