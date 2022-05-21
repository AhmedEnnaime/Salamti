import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Ongles_Data/Implement_Ongles.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Ongles_Data/Ongles_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Ongles_Data/Ongles_controller.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_controller.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Implement_Digestive_symptome.dart';
import 'package:e_sante/Toxicite_cutanee/Mains/Mains_survey.dart';
import 'package:e_sante/Toxicite_cutanee/Ongles/Ongles_survey.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:e_sante/Toxicite_digestive/Constipation/Constipation_survey.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey.dart';
import 'package:e_sante/variables.dart';
import '../../Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Cutane_symptome_Model.dart';
import '../../Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Cutane_symptome_controller.dart';
import '../../Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Implement_Cutane_symptome.dart';
import '../../Data/Toxicity_Data/Cutanee_Data/Mains_Data/Implement_Mains.dart';
import '../../Data/Toxicity_Data/Cutanee_Data/Mains_Data/Mains_Model.dart';
import '../../Data/Toxicity_Data/Cutanee_Data/Mains_Data/Mains_controller.dart';
import '../../Data/Toxicity_Data/Cutanee_Data/Rash_Data/Implement_Rash.dart';
import '../../Data/Toxicity_Data/Cutanee_Data/Rash_Data/Rash_Model.dart';
import '../../Data/Toxicity_Data/Cutanee_Data/Rash_Data/Rash_controller.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_Model.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Nausees_Data/Implement_Nausees.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_Model.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_controller.dart';

class Ongles_advices extends StatelessWidget {
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
    var onglescontroller = Onglescontroller(Ongles_Data());
    var mainscontroller = Mainscontroller(Mains_Data());
    var rashcontroller = Rashcontroller(Rash_Data());
    var cutane_symptomecontroller = Cutane_symptomecontroller(Cutane_symptome_Data());
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
                            'aux Ongles',
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
                      'Bonne hydratation ',
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
                      'Bain et douche tiède',
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
                      'Port de vêtements amples ( coton et lin)',
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
                      'Savon dermatologique pH neutre ou un savon surgras',
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
                      'Limer plutôt que couper les ongles',
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
                      'Garder les ongles courts',
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
                      'Port de chaussures confortables',
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
                      'Éviction de tout traumatisme des extrémités',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ), SizedBox(height: 10,),
                  ListTile(
                    leading: Icon(
                      Icons.check_box,
                      size: 40,
                    ),
                    title: Text(
                      'Vernis durcisseur, crèmes nutritives',
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
                      'Eviter faux ongles, dissolvant à base d’acétone et savons parfumées',
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
                      'Protection solaire',
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
                          primary: Colors.cyan[900],
                          minimumSize: Size(40, 40),
                          padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10)
                      ),
                      onPressed: () {
                        cutanee_day = DateTime.now();
                        Ongles ongles = Ongles(Purulente: Purulente.toString(),Inflammatoire: Infla.toString(),Chaude: Chaude.toString(),Douleureuse: Doul.toString(),Rouge: Rouge.toString(),Aucun: Aucun_ongles.toString(),Grade:Ongles_grade(),Patient_Ip: IP.text);
                        Mains mains = Mains(Topographie: val26,Impact: val27,Grade:Mains_grade(),Patient_Ip: IP.text);
                        Rash rash = Rash(Visage: Visage.toString(),Plis: Plis.toString(),Peaux: Peaux.toString(),Autre: autre.text,Surface: val24,Prurit: Prurit.toString(),Douleur: Douleur_rash.toString(),Brulure: brulure_rash.toString(),Fievre: Fievre_rash.toString(),Impact: impact_rash.toString(),Delai: delai_rash.text,Signe: val25,Grade: Rash_grade(),Patient_Ip: IP.text);
                        Cutane_symptome cutane_symptome = Cutane_symptome(Rash: Rash_value.toString(),Mains: Mains_value.toString(),Ongles: Ongles_value.toString(),Infiltration: Infiltration_value.toString(),Alopecie: Alopecie_value.toString(),Suivi: Suivi_value.toString(),Toxicity_day: '${cutanee_day?.day.toString()} ${_getMonthDate(cutanee_day!.month).toString()} ${cutanee_day?.year.toString()}',Rash_grade: rash.Grade,Mains_grade:mains.Grade,Ongles_grade:ongles.Grade,Patient_Ip: IP.text);
                        if(Rash_value == true){
                          rashcontroller.postRash(rash);
                        }
                        if(Mains_value == true){
                          mainscontroller.postMains(mains);
                        }
                        onglescontroller.postOngles(ongles);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acceuil()));
                          cutane_symptomecontroller.postCutane_symptome(cutane_symptome);


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
