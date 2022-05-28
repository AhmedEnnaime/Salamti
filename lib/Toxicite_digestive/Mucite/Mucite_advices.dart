import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:e_sante/variables.dart';

import '../../Data/Toxicity_Data/Digestive_Data/Constipation_Data/Constipation_Model.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Constipation_Data/Constipation_controller.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Constipation_Data/Implement_Constipation.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Diarrhees_Data/Diarrhees_Model.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Diarrhees_Data/Diarrhees_controller.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Diarrhees_Data/Implement_Diarrhees.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_Model.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_controller.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Implement_Digestive_symptome.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Mucite_Data/Implement_Mucite.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Mucite_Data/Mucite_Model.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Mucite_Data/Mucite_controller.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Nausees_Data/Implement_Nausees.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_Model.dart';
import '../../Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_controller.dart';


class Mucite_advices extends StatelessWidget {
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
    var mucitecontroller = Mucitecontroller(Mucite_Data());
    var constipationcontroller = Constipationcotroller(Constipation_Data());
    var diarrheescontroller = Diarrheescontroller(Diarrhees_Data());
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
                            'a la mucite',
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
                      'Brosse à dents extra souple en nylon ',
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
                      'Buvez 8 à 10 verres de liquide par jour (eau, boisson bouillon) sauf si votre médecin prescrit un régime limité en apports hydriques ',
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
                      'Eviter brosse à dents électrique',
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
                      'Brossage des gencives après chaque repas, nettoyage régulier des prothèses dentaires',
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
                      'Dentifrice sans menthol, bien rincer ',
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
                      'Bâtonnets glycérinés ( si brossage impossible) ',
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
                      'Boissons fraîches et pétillantes, glaces et sorbets, fruits frais (morceaux de kiwi ou ananas congelés)',
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
                      'Lubrifiants sur les lèvres',
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
                      'Bains de bouche systématiques',
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
                      'Eviter bains de bouches antiseptiques ou antifongiques',
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
                        Mucite_Model mucite = Mucite_Model(Voix: val13,Deglutition: val14,Langue: val15,Salive: val16,Muqueuses: val17,Gencives: val18,Dents: val19,Levres: val20,Grade:Mucite_grade(),Patient_Ip: IP.text );
                        Constipation constipation = Constipation(Frequence_selles: val11,Duree_evolution: val12,Crampes:Crampes_value,Sgnm:Digestif_value,Vms:Vms_value,Fievre_consti:Fvr_value,Grade:Constipation_grade(),Patient_Ip:IP.text);
                        toxicity_day = DateTime.now();
                        Diarrhees diarrhees = Diarrhees(Nbr_selles: val6,Duree_survenue: duree.text ,Douleurs_abdo: val7,Prise_alimentaire: val8,Aspect_selles: val9,Fatigue:Fatigue_value.toString(),Denutrition:Denutrition_value.toString(),Saignement:Saignement_value.toString(),Trbl_neuro:neurologiques_value.toString(),Fievre_diarr:Fievre_value.toString(),Grade:Diarrhees_grade(),Patient_Ip: IP.text );
                        Nausees nausees = Nausees(Moment_apparition: val,Nbr_ep: val1,Duree_par_jours: val2,Nbr_repas: val3,Troubles_neurologiques:Troubles_value.toString(),Moins_frequente:Moins_urines_value.toString(),Urines_fonces:Plus_urines_value.toString(),Deshydratation:Deshydratation_value.toString(),Perte_poids:Poids_value.toString(),Traitement: val5,Traitement_desc:Traitement.text,Grade:Nausees_grade(),Patient_Ip: IP.text);
                        Digestive_symptome digestive_symptome = Digestive_symptome(Nausees: Nausees_value.toString(),Vomissements: Vommissements_value.toString(),Diarrhees: Diarrhees_value.toString(),Constipation: Constipation_value.toString(),Mucite: Mucite_value.toString(),Douleurs_abdominales: Douleurs_value.toString(),Modification_gouts:Gouts_value.toString(),Toxicity_day:'${toxicity_day?.day.toString()} ${_getMonthDate(toxicity_day!.month).toString()} ${toxicity_day?.year.toString()}',Nausees_grade:nausees.Grade,Diarrhees_grade:diarrhees.Grade,Constipation_grade:constipation.Grade,Mucite_grade:mucite.Grade,Patient_Ip: IP.text );
                        mucitecontroller.postMucite(mucite);
                        if(Nausees_value == true){
                          nauseescontroller.postNausees(nausees);
                        }
                        if(Diarrhees_value == true){
                          diarrheescontroller.postDiarrhees(diarrhees);
                        }
                        if(Constipation_value == true){
                          constipationcontroller.postConstipation(constipation);
                        }
                        degistive_symptomecontroller.postDigestive_symptome(digestive_symptome);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil()));

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
