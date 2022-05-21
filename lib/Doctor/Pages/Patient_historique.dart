import 'package:e_sante/Data/Toxicity_Data/Arthromyalgique_Data/Arthromyalgique_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Arthromyalgique_Data/Arthromyalgique_controller.dart';
import 'package:e_sante/Data/Toxicity_Data/Arthromyalgique_Data/Implement_Arthromyalgique.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Cutane_symptome_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_controller.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Implement_Digestive_symptome.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Oculaire_Data/Implement_Oculaire.dart';
import 'package:e_sante/Data/Toxicity_Data/Oculaire_Data/Oculaire_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Oculaire_Data/Oculaire_controller.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';

import '../../Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Cutane_symptome_controller.dart';
import '../../Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Implement_Cutane_symptome.dart';

class Patient_historique extends StatefulWidget {
  const Patient_historique({Key? key}) : super(key: key);

  @override
  State<Patient_historique> createState() => _Patient_historiqueState();
}

class _Patient_historiqueState extends State<Patient_historique> {

  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    var digestivesymptomecontroller = Digestive_symptomecontroller(Digestive_symptome_Data());
    var cutane_symptomecontroller = Cutane_symptomecontroller(Cutane_symptome_Data());
    var oculairecontroller = Oculairecontroller(Oculaire_Data());
    var arthromyalgiquecontroller = Arthromyalgiquecontroller(Arthromyalgique_Data());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[800],
        title: Text(
          'Historique',
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Digestive_symptome>>(
        future: digestivesymptomecontroller.getDigestive_symptome(),
          builder: (context, snapshot) {

        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        }
        if (snapshot.hasError){
          return Center(child: Text('${snapshot.error}'),);
        }
        return ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context,index) {
              var Toxicity_history = snapshot.data?[index];
              String Nausees_declaration() {
                if (Toxicity_history?.Nausees == 'true') {
                  return 'Declarée';
                } else
                  return 'Non declarée';
              }
              String Diarrhees_declaration() {
                if (Toxicity_history?.Diarrhees == 'true') {
                  return 'Declarée';
                } else
                  return 'Non declarée';
              }
              String Constipation_declaration() {
                if (Toxicity_history?.Constipation == 'true') {
                  return 'Declarée';
                } else
                  return 'Non declarée';
              }
              String Mucite_declaration() {
                if (Toxicity_history?.Mucite == 'true') {
                  return 'Declarée';
                } else
                  return 'Non declarée';
              }
              return Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                         SizedBox(width: 70,),
                         Text(
                           'Nausées',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20
                           ),
                         ),
                          SizedBox(width: 70,),
                          Text(
                            'Grade',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${Toxicity_history?.Toxicity_day}',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                          SizedBox(width: 50,),
                          Text(
                            '${Nausees_declaration()}',
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                          SizedBox(width: 50,),
                          Text(
                            '${Toxicity_history?.Nausees_grade}',
                            style: TextStyle(
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(width: 70,),
                          Text(
                            'Diarrhées',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(width: 70,),
                          Text(
                            'Grade',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${Toxicity_history?.Toxicity_day}',
                            style: TextStyle(
                                fontSize: 16,

                            ),
                          ),
                          SizedBox(width: 50,),
                          Text(
                            '${Diarrhees_declaration()}',
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                          SizedBox(width: 50,),
                          Text(
                            '${Toxicity_history?.Diarrhees_grade}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(width: 60,),
                          Text(
                            'Constipation',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(width: 60,),
                          Text(
                            'Grade',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${Toxicity_history?.Toxicity_day}',
                            style: TextStyle(
                              fontSize: 16,

                            ),
                          ),
                          SizedBox(width: 50,),
                          Text(
                            '${Constipation_declaration()}',
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                          SizedBox(width: 50,),
                          Text(
                            '${Toxicity_history?.Constipation_grade}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(width: 70,),
                          Text(
                            'Mucite',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(width: 70,),
                          Text(
                            'Grade',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${Toxicity_history?.Toxicity_day}',
                            style: TextStyle(
                              fontSize: 16,

                            ),
                          ),
                          SizedBox(width: 50,),
                          Text(
                            '${Mucite_declaration()}',
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                          SizedBox(width: 50,),
                          Text(
                            '${Toxicity_history?.Mucite_grade}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 40,),
                      FutureBuilder<List<Cutane_symptome>>(
                        future: cutane_symptomecontroller.getCutane_symptome(),
                        builder: ( context, snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          if (snapshot.hasError){
                            return Center(child: Text('${snapshot.error}'),);
                          }
                          return Container(
                            width:WidthScreen,
                            //height: HeightScreen/4,
                            child: ListView.separated(
                              shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  var cutane_symptome = snapshot.data?[index];
                                  String Rash_declaration() {
                                    if (cutane_symptome?.Rash == 'true') {
                                      return 'Declarée';
                                    } else
                                      return 'Non declarée';
                                  }
                                  String Mains_declaration() {
                                    if (cutane_symptome?.Mains_grade == 'true') {
                                      return 'Declarée';
                                    } else
                                      return 'Non declarée';
                                  }
                                  String Ongles_declaration() {
                                    if (cutane_symptome?.Ongles == 'true') {
                                      return 'Declarée';
                                    } else
                                      return 'Non declarée';
                                  }
                                  return Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Date',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          SizedBox(width: 40,),
                                          Text(
                                            'Rash cutané',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20
                                            ),
                                          ),
                                          SizedBox(width: 40,),
                                          Text(
                                            'Grade',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 30,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${cutane_symptome?.Toxicity_day}',
                                            style: TextStyle(
                                              fontSize: 16,

                                            ),
                                          ),
                                          SizedBox(width: 50,),
                                          Text(
                                            '${Rash_declaration()}',
                                            style: TextStyle(
                                                fontSize: 16
                                            ),
                                          ),
                                          SizedBox(width: 50,),
                                          Text(
                                            '${cutane_symptome?.Rash_grade}',
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 40,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Date',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          SizedBox(width: 40,),
                                          Text(
                                            'Mains',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20
                                            ),
                                          ),
                                          SizedBox(width: 40,),
                                          Text(
                                            'Grade',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 30,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${cutane_symptome?.Toxicity_day}',
                                            style: TextStyle(
                                              fontSize: 16,

                                            ),
                                          ),
                                          SizedBox(width: 50,),
                                          Text(
                                            '${Mains_declaration()}',
                                            style: TextStyle(
                                                fontSize: 16
                                            ),
                                          ),
                                          SizedBox(width: 50,),
                                          Text(
                                            '${cutane_symptome?.Mains_grade}',
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 40,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Date',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          SizedBox(width: 40,),
                                          Text(
                                            'Ongles',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20
                                            ),
                                          ),
                                          SizedBox(width: 40,),
                                          Text(
                                            'Grade',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 30,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${cutane_symptome?.Toxicity_day}',
                                            style: TextStyle(
                                              fontSize: 16,

                                            ),
                                          ),
                                          SizedBox(width: 50,),
                                          Text(
                                            '${Ongles_declaration()}',
                                            style: TextStyle(
                                                fontSize: 16
                                            ),
                                          ),
                                          SizedBox(width: 50,),
                                          Text(
                                            '${cutane_symptome?.Ongles_grade}',
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  );
                              
                            }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length?? 0,),
                          );
                          
                        },
                      ),
                      SizedBox(height: 40,),
                      FutureBuilder<List<Oculaire>>(
                        future: oculairecontroller.getOculaire(),
                        builder: ( context, snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          if (snapshot.hasError){
                            return Center(child: Text('${snapshot.error}'),);
                          }
                          return Container(
                            width:WidthScreen,
                            height: HeightScreen/8.5,
                            child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                var oculaire = snapshot.data?[index];
                                String Oculaire_declaration(){
                                  if(oculaire?.Apparition!= null){
                                    return 'Declarée';
                                  }else return 'Non declarée';
                                }
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Date',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(width: 40,),
                                        Text(
                                          'Oculaire',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),
                                        ),
                                        SizedBox(width: 40,),
                                        Text(
                                          'Conduite',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 30,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${oculaire?.Toxicity_day}',
                                          style: TextStyle(
                                            fontSize: 16,

                                          ),
                                        ),
                                        SizedBox(width: 50,),
                                        Text(
                                          '${Oculaire_declaration()}',
                                          style: TextStyle(
                                              fontSize: 16
                                          ),
                                        ),
                                        SizedBox(width: 50,),
                                        Text(
                                          '${oculaire?.Grade}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                );

                              }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length?? 0,),
                          );

                        },
                      ),
                      SizedBox(height: 40,),
                      FutureBuilder<List<Arthromyalgique>>(
                        future: arthromyalgiquecontroller.getArthromyalgique(),
                        builder: ( context, snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          if (snapshot.hasError){
                            return Center(child: Text('${snapshot.error}'),);
                          }
                          return Container(
                            width:WidthScreen,
                            height: HeightScreen/8.5,
                            child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                var arthromyalgique = snapshot.data?[index];
                                String Arthromyalgique_declaration(){
                                  if(arthromyalgique?.Apparition!= null){
                                    return 'Declarée';
                                  }else return 'Non declarée';
                                }
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Date',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(width: 40,),
                                        Text(
                                          'Arthromyalgique',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),
                                        ),
                                        SizedBox(width: 40,),
                                        Text(
                                          'Conduite',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 30,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${arthromyalgique?.Toxicity_day}',
                                          style: TextStyle(
                                            fontSize: 16,

                                          ),
                                        ),
                                        SizedBox(width: 50,),
                                        Text(
                                          '${Arthromyalgique_declaration()}',
                                          style: TextStyle(
                                              fontSize: 16
                                          ),
                                        ),
                                        SizedBox(width: 50,),
                                        Text(
                                          'Ordonnance',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                );

                              }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length?? 0,),
                          );

                        },
                      ),
                      SizedBox(height: 40,),
                      Center(
                        child: Text(
                          'Prochain traitement',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                );
            }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length?? 0,
              );
          }
        )
      );
  }
}
