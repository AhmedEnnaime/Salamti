import 'package:e_sante/Data/Cures_Data/Cures_Model.dart';
import 'package:e_sante/Data/Cures_Data/Cures_controller.dart';
import 'package:e_sante/Data/Cures_Data/Implement_cures.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Cutane_symptome_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Cutane_symptome_controller.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Implement_Cutane_symptome.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_controller.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Implement_Digestive_symptome.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Gonadique_Data/Gonadique_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Neurologique_Data/Neurologique_Model.dart';
import 'package:e_sante/Main_pages/Cures.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';

import '../../Data/Toxicity_Data/Arthromyalgique_Data/Arthromyalgique_Model.dart';
import '../../Data/Toxicity_Data/Arthromyalgique_Data/Arthromyalgique_controller.dart';
import '../../Data/Toxicity_Data/Arthromyalgique_Data/Implement_Arthromyalgique.dart';
import '../../Data/Toxicity_Data/Gonadique_Data/Gonadique_controller.dart';
import '../../Data/Toxicity_Data/Gonadique_Data/Implement_Gonadique.dart';
import '../../Data/Toxicity_Data/Neurologique_Data/Implement_Neurologique.dart';
import '../../Data/Toxicity_Data/Neurologique_Data/Neurologique_controller.dart';
import '../../Data/Toxicity_Data/Oculaire_Data/Implement_Oculaire.dart';
import '../../Data/Toxicity_Data/Oculaire_Data/Oculaire_Model.dart';
import '../../Data/Toxicity_Data/Oculaire_Data/Oculaire_controller.dart';

class historique extends StatefulWidget {
  const historique({Key? key}) : super(key: key);

  @override
  State<historique> createState() => _historiqueState();
}

class _historiqueState extends State<historique> {

  @override
  Widget build(BuildContext context) {
    var digestivesymptomecontroller = Digestive_symptomecontroller(Digestive_symptome_Data());
    var cutane_symptomecontroller = Cutane_symptomecontroller(Cutane_symptome_Data());
    var oculairecontroller = Oculairecontroller(Oculaire_Data());
    var arthromyalgiquecontroller = Arthromyalgiquecontroller(Arthromyalgique_Data());
    var neurologiquecontroller = Neurologiquecontroller(Neurologique_Data());
    var gonadiquecontroller = Gonadiquecontroller(Gonadique_Data());
    var curecontroller = Curescontroller(Cures_Data());
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
                  Color getNauseescolor(){
                    if(Toxicity_history?.Nausees_grade == 'Grade 4' || Toxicity_history?.Nausees_grade == 'Grade 3'){
                      return Colors.redAccent;
                    }else if(Toxicity_history?.Nausees_grade == 'Grade 2'){
                      return Colors.orange;
                    }else if(Toxicity_history?.Nausees_grade == 'Grade 1'){
                      return Colors.green;
                    }else return Colors.white;

                  }
                  Color getDiarrheescolor(){
                    if(Toxicity_history?.Diarrhees_grade == 'Grade 3'){
                      return Colors.redAccent;
                    }else if(Toxicity_history?.Diarrhees_grade == 'Grade 2'){
                      return Colors.orange;
                    }else if(Toxicity_history?.Diarrhees_grade == 'Grade 1'){
                      return Colors.green;
                    }else return Colors.white;

                  }
                  Color getConstipationcolor(){
                    if(Toxicity_history?.Constipation_grade == 'Grade 3'){
                      return Colors.redAccent;
                    }else if(Toxicity_history?.Constipation_grade == 'Grade 2'){
                      return Colors.orange;
                    }else if(Toxicity_history?.Constipation_grade == 'Grade 1'){
                      return Colors.green;
                    }else return Colors.white;

                  }
                  Color getMucitecolor(){
                    if(Toxicity_history?.Mucite_grade == 'Grade 3'){
                      return Colors.redAccent;
                    }else if(Toxicity_history?.Mucite_grade == 'Grade 2'){
                      return Colors.orange;
                    }else if(Toxicity_history?.Mucite_grade == 'Grade 1'){
                      return Colors.green;
                    }else return Colors.white;

                  }
                  return Column(
                    children: [
                      Table(
                        border: TableBorder.all(),
                          children: [
                            TableRow(
                              children: [
                                Center(child: Text(
                                  'Date',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                  ),
                                )),
                                Center(child: Text(
                                  'Toxicité digestive',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),
                                )),
                                Center(child: Text(
                                  'Grade',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),
                                )),
                              ]
                            ),
                            TableRow(
                                decoration: BoxDecoration(color: getNauseescolor()),
                                children: [
                                  Center(child: Text('${Toxicity_history?.Toxicity_day}')),
                                  Center(child: Text(
                                    'Nausées: ${Nausees_declaration()}',
                                    textAlign: TextAlign.center,
                                  )),
                                  Center(child: Text('${Toxicity_history?.Nausees_grade}')),
                                ]
                            ),
                            TableRow(
                                decoration: BoxDecoration(color: getDiarrheescolor()),
                                children: [
                                  Center(child: Text('${Toxicity_history?.Toxicity_day}')),
                                  Center(child: Text(
                                    'Diarrhées: ${Diarrhees_declaration()}',
                                    textAlign: TextAlign.center,
                                  )),
                                  Center(child: Text('${Toxicity_history?.Diarrhees_grade}')),
                                ]
                            ),
                            TableRow(
                                decoration: BoxDecoration(color: getConstipationcolor()),
                                children: [
                                  Center(child: Text('${Toxicity_history?.Toxicity_day}')),
                                  Center(child: Text(
                                    'Constipation: ${Constipation_declaration()}',
                                    textAlign: TextAlign.center,
                                  )),
                                  Center(child: Text('${Toxicity_history?.Constipation_grade}')),
                                ]
                            ),
                            TableRow(
                                decoration: BoxDecoration(color: getMucitecolor()),
                                children: [
                                  Center(child: Text('${Toxicity_history?.Toxicity_day}')),
                                  Center(child: Text(
                                    'Mucite: ${Mucite_declaration()}',
                                    textAlign: TextAlign.center,
                                  )),
                                  Center(child: Text('${Toxicity_history?.Mucite_grade}')),
                                ]
                            ),

                          ],
                      ),
                      SizedBox(height: 20,),
                      FutureBuilder<List<Cutane_symptome>>(
                        future: cutane_symptomecontroller.getCutane_symptome(),
                        builder: ( context, snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          if (snapshot.hasError){
                            return Center(child: Text('${snapshot.error}'),);
                          }
                          return ListView.separated(
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
                                  if (cutane_symptome?.Mains == 'true') {
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
                                Color getRashcolor(){
                                  if(cutane_symptome?.Rash_grade == 'Grade 3'){
                                    return Colors.redAccent;
                                  }else if(cutane_symptome?.Rash_grade  == 'Grade 2'){
                                    return Colors.orange;
                                  }else if(cutane_symptome?.Rash_grade  == 'Grade 1'){
                                    return Colors.green;
                                  }else return Colors.white;

                                }
                                Color getMainscolor(){
                                  if(cutane_symptome?.Mains_grade == 'Grade 3'){
                                    return Colors.redAccent;
                                  }else if(cutane_symptome?.Mains_grade  == 'Grade 2'){
                                    return Colors.orange;
                                  }else if(cutane_symptome?.Mains_grade  == 'Grade 1'){
                                    return Colors.green;
                                  }else return Colors.white;

                                }
                                Color getOnglescolor(){
                                  if(cutane_symptome?.Ongles_grade == 'Hopital'){
                                    return Colors.redAccent;
                                  }else return Colors.white;

                                }
                                return Column(
                                  children: [
                                    Table(
                                      border: TableBorder.all(),
                                      children: [
                                        TableRow(
                                            children: [
                                              Center(child: Text(
                                                'Date',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18
                                                ),
                                              )),
                                              Center(child: Text(
                                                'Toxicité cutanée',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18
                                                ),
                                              )),
                                              Center(child: Text(
                                                'Grade',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18
                                                ),
                                              )),
                                            ]
                                        ),
                                        TableRow(
                                            decoration: BoxDecoration(color: getRashcolor()),
                                            children: [
                                              Center(child: Text('${cutane_symptome?.Toxicity_day}')),
                                              Center(child: Text(
                                                'Rash cutané: ${Rash_declaration()}',
                                                textAlign: TextAlign.center,
                                              )),
                                              Center(child: Text('${cutane_symptome?.Rash_grade}')),
                                            ]
                                        ),
                                        TableRow(
                                            decoration: BoxDecoration(color: getMainscolor()),
                                            children: [
                                              Center(child: Text('${cutane_symptome?.Toxicity_day}')),
                                              Center(child: Text(
                                                'Mains et pieds: ${Mains_declaration()}',
                                                textAlign: TextAlign.center,
                                              )),
                                              Center(child: Text('${cutane_symptome?.Mains_grade}')),
                                            ]
                                        ),
                                        TableRow(
                                            decoration: BoxDecoration(color: getOnglescolor()),
                                            children: [
                                              Center(child: Text('${cutane_symptome?.Toxicity_day}')),
                                              Center(child: Text(
                                                'Ongles: ${Ongles_declaration()}',
                                                textAlign: TextAlign.center,
                                              )),
                                              Center(child: Text('${cutane_symptome?.Ongles_grade}')),
                                            ]
                                        ),
                                      ],
                                    ),
                                  ],
                                );

                              }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length?? 0,);


                        },
                      ),
                      SizedBox(height: 20,),
                      FutureBuilder<List<Arthromyalgique>>(
                        future: arthromyalgiquecontroller.getArthromyalgique(),
                        builder: ( context, snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          if (snapshot.hasError){
                            return Center(child: Text('${snapshot.error}'),);
                          }
                          return ListView.separated(
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
                                    Table(
                                      border: TableBorder.all(),
                                      children: [
                                        TableRow(
                                          children: [
                                            Center(child: Text(
                                              'Date',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                            )),
                                            Center(child: Text(
                                              'Toxicité arthromyalgique',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                            )),
                                            Center(child: Text(
                                              'Conduite',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                            )),
                                          ]
                                        ),
                                        TableRow(
                                            children: [
                                              Center(child: Text('${arthromyalgique?.Toxicity_day}')),
                                              Center(child: Text(
                                                '${Arthromyalgique_declaration()}',
                                                textAlign: TextAlign.center,
                                              )),
                                              Center(child: Text('Ordonnance')),
                                            ]
                                        ),
                                      ],
                                      columnWidths: {1: FlexColumnWidth(1.4)},

                                    )
                                  ],
                                );

                              }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length?? 0,);


                        },
                      ),
                      SizedBox(height: 20,),
                      FutureBuilder<List<Oculaire>>(
                        future: oculairecontroller.getOculaire(),
                        builder: ( context, snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          if (snapshot.hasError){
                            return Center(child: Text('${snapshot.error}'),);
                          }
                          return ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                var oculaire = snapshot.data?[index];
                                String Oculaire_declaration(){
                                  if(oculaire?.Apparition!= null){
                                    return 'Declarée';
                                  }else return 'Non declarée';
                                }
                                Color getOculairecolor(){
                                  if(oculaire?.Grade == 'Hopital'){
                                    return Colors.redAccent;
                                  }else return Colors.white;

                                }
                                return Column(
                                  children: [
                                   Table(
                                     border: TableBorder.all(),
                                     children: [
                                       TableRow(
                                         children: [
                                           Center(child: Text(
                                             'Date',
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 18
                                             ),
                                           )),
                                           Center(child: Text(
                                             'Toxicité oculaire',
                                             textAlign: TextAlign.center,
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 18
                                             ),
                                           )),
                                           Center(child: Text(
                                             'Conduite',
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 18
                                             ),
                                           )),
                                         ]
                                       ),
                                       TableRow(
                                           decoration: BoxDecoration(color: getOculairecolor()),
                                           children: [
                                             Center(child: Text('${oculaire?.Toxicity_day}')),
                                             Center(child: Text(
                                               '${Oculaire_declaration()}',
                                               textAlign: TextAlign.center,
                                             )),
                                             Center(child: Text('${oculaire?.Grade}')),
                                           ]
                                       ),

                                     ],
                                   )
                                  ],
                                );

                              }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length?? 0,);


                        },
                      ),
                      SizedBox(height: 20,),
                      FutureBuilder<List<Neurologique>>(
                        future: neurologiquecontroller.getNeurologique(),
                        builder: ( context, snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          if (snapshot.hasError){
                            return Center(child: Text('${snapshot.error}'),);
                          }
                          return ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var neurologique = snapshot.data?[index];
                              String Neurologique_declaration(){
                                if(neurologique?.Toxicity_day!= null){
                                  return 'Declarée';
                                }else return 'Non declarée';
                              }
                              Color getNeurologiquecolor(){
                                if(neurologique?.Grade == 'Ordonnance'){
                                  return Colors.orange;
                                }else return Colors.white;

                              }
                              return Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(),
                                    children: [
                                      TableRow(
                                          children: [
                                            Center(child: Text(
                                              'Date',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                            )),
                                            Center(child: Text(
                                              'Toxicité Neurologique',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                            )),
                                            Center(child: Text(
                                              'Conduite',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                            )),
                                          ]
                                      ),
                                      TableRow(
                                          decoration: BoxDecoration(color: getNeurologiquecolor()),
                                          children: [
                                            Center(child: Text('${neurologique?.Toxicity_day}')),
                                            Center(child: Text(
                                              '${Neurologique_declaration()}',
                                              textAlign: TextAlign.center,
                                            )),
                                            Center(child: Text('${neurologique?.Grade}')),
                                          ]
                                      ),
                                    ],
                                    columnWidths: {1: FlexColumnWidth(1.4)},

                                  )
                                ],
                              );

                            }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length?? 0,);


                        },
                      ),
                      SizedBox(height: 20,),
                      FutureBuilder<List<Gonadique>>(
                        future: gonadiquecontroller.getGonadique(),
                        builder: ( context, snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          if (snapshot.hasError){
                            return Center(child: Text('${snapshot.error}'),);
                          }
                          return ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var gonadique = snapshot.data?[index];
                              String Gonadique_declaration(){
                                if(gonadique?.Toxicity_day!= null){
                                  return 'Declarée';
                                }else return 'Non declarée';
                              }
                              return Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(),
                                    children: [
                                      TableRow(
                                          children: [
                                            Center(child: Text(
                                              'Date',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                            )),
                                            Center(child: Text(
                                              'Toxicité Gonadique',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                            )),
                                            Center(child: Text(
                                              'Conduite',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                            )),
                                          ]
                                      ),
                                      TableRow(
                                          children: [
                                            Center(child: Text('${gonadique?.Toxicity_day}')),
                                            Center(child: Text(
                                              '${Gonadique_declaration()}',
                                              textAlign: TextAlign.center,
                                            )),
                                            Center(child: Text('${gonadique?.Grade}')),
                                          ]
                                      ),
                                    ],
                                    columnWidths: {1: FlexColumnWidth(1.4)},

                                  )
                                ],
                              );

                            }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length?? 0,);


                        },
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Text(
                          'Cures',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.red,
                              decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      FutureBuilder<List<Cures_Model>>(
                        future: curecontroller.getHistoriqueCures(),
                        builder: ( context, snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          if (snapshot.hasError){
                            return Center(child: Text('${snapshot.error}'),);
                          }
                          return ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var cures = snapshot.data?[index];
                              return Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(),
                                    children: [
                                      TableRow(
                                          children: [
                                            Center(child: Text(
                                              'Date de derniere cure',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                            )),

                                            Center(child: Text(
                                              'Date de prochaine cure',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                            )),
                                          ]
                                      ),
                                      TableRow(
                                          children: [
                                            Center(child: Text('${cures?.cure_day}')),

                                            Center(child: Text('${cures?.Next_cure}')),
                                          ]
                                      ),
                                    ],
                                    //columnWidths: {1: FlexColumnWidth(1.4)},

                                  )
                                ],
                              );

                            }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length?? 0,);


                        },
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Text(
                          'Prochain traitement',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.red,
                              decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ],
                  );

                }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length?? 0,
              );
            }
        )
    );
  }
}
