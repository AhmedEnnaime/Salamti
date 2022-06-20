import 'package:e_sante/Bilan_intercure/Bilan_Intercure.dart';
import 'package:e_sante/Data/Cures_Data/Cures_Model.dart';
import 'package:e_sante/Main_pages/Toxicity.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Digestive_survey.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_survey2.dart';

import '../Data/Cures_Data/Cures_controller.dart';
import '../Data/Cures_Data/Implement_cures.dart';
import '../Main_pages/Acceuil.dart';
import 'Bilan_intercure2.dart';

class Bilan_intercure3 extends StatefulWidget {

  @override
  State<Bilan_intercure3> createState() => _Bilan_intercure3State();
}

class _Bilan_intercure3State extends State<Bilan_intercure3> {
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
    var curescontroller = Curescontroller(Cures_Data());
    return Scaffold(

      body: SafeArea(
          child: FutureBuilder<List<Cures_Model>>(
            future: curescontroller.getCures(),
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
                    bool Bilan_result(){
                      if(val28 == '12' || val28 == '16' || val29 == '8' || val29 == '1.5' || val30 == '150000' || val30 == '400000'){
                        return false;
                      }else return true;
                    }
                    return Column(
                      children: [
                        Container(
                          width: WidthScreen,
                          height: HeightScreen/3.8,
                          color: Colors.pinkAccent[100],
                          child: Center(
                            child: Text(
                              'Bilan intercure',
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
                                  'Plaquettes',
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
                                    'Moins de 150000 mm',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  value: '150000',
                                  groupValue: val30,
                                  onChanged: (value){
                                    setState(() {
                                      val30=value!;

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
                                    'Entre 150000 et 400000 mm',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  value: 'Entre 150000 et 400000',
                                  groupValue: val30,
                                  onChanged: (value){
                                    setState(() {
                                      val30=value!;
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
                                    'Supérieur à 400000 mm',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  value: '400000',
                                  groupValue: val30,
                                  onChanged: (value){

                                    setState(() {
                                      val30=value!;

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
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bilan_intercure2()));

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

                                      if(Bilan_result() == false){
                                       cure_day = DateTime.now().subtract(Duration(days: 18));
                                       next_cure = cure_day?.add(Duration(days: 24));
                                       bilan_day = next_cure?.subtract(Duration(days: 3));
                                       Cures_Model cure = Cures_Model(cure_day: '${cure_day?.day.toString()} ${_getMonthDate(cure_day!.month).toString()} ${cure_day?.year.toString()}' ,Next_cure: '${next_cure?.day.toString()} ${_getMonthDate(next_cure!.month).toString()} ${next_cure?.year.toString()}',bilan_day:'${bilan_day?.day.toString()} ${_getMonthDate(bilan_day!.month).toString()} ${bilan_day?.year.toString()}',Patient_Ip: IP.text,Patient_nom: cures?.Patient_nom);
                                       curescontroller.postCures(cure);
                                       showDialog(context: context, builder:  (_) =>AlertDialog(
                                         //title: Text('Attention'),
                                         content: Container(
                                           height: HeightScreen/4.2,
                                           child: Column(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                               Text(
                                                 'Votre cure et bilan intercure ont été reporté de 3 jours',
                                                 textAlign: TextAlign.center,
                                                 style: TextStyle(
                                                     fontSize: 16,
                                                     fontWeight: FontWeight.bold
                                                 ),
                                               ),
                                               SizedBox(height: 20,),
                                               Icon(
                                                 Icons.new_releases_outlined,
                                                 size: 40,
                                                 color: Colors.red,
                                               ),
                                               SizedBox(height: 20,),
                                               ElevatedButton(
                                                   style: ElevatedButton.styleFrom(
                                                     primary: Color(0xff053F5E),
                                                     padding: EdgeInsets.all(16),
                                                   ),
                                                   onPressed: (){
                                                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil()));
                                                   },
                                                   child: Text(
                                                     'Accueil',
                                                   )
                                               )
                                             ],
                                           ),
                                         ),
                                       ),
                                         barrierDismissible: true,
                                       );

                                      }else{
                                        cure_day = DateTime.now().subtract(Duration(days: 18));
                                        next_cure = cure_day?.add(Duration(days: 21));
                                        Cures_Model cure = Cures_Model(cure_day: '${cure_day?.day.toString()} ${_getMonthDate(cure_day!.month).toString()} ${cure_day?.year.toString()}' ,Next_cure: '${next_cure?.day.toString()} ${_getMonthDate(next_cure!.month).toString()} ${next_cure?.year.toString()}',bilan_day: 'null',Patient_Ip: IP.text,Patient_nom: cures?.Patient_nom);
                                        curescontroller.postCures(cure);
                                        showDialog(context: context, builder:  (_) =>AlertDialog(
                                          //title: Text('Attention'),
                                          content: Container(
                                            height: HeightScreen/4.2,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Votre cure est planifié dans la meme date le ${cures?.Next_cure} ',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                                SizedBox(height: 20,),
                                                Icon(
                                                  Icons.done,
                                                  size: 40,
                                                  color: Colors.green,
                                                ),
                                                SizedBox(height: 20,),
                                                ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                      primary: Color(0xff053F5E),
                                                      padding: EdgeInsets.all(16),
                                                    ),
                                                    onPressed: (){
                                                      Navigator.pop(context, MaterialPageRoute(builder: (context)=>Toxicity()));
                                                    },
                                                    child: Text(
                                                      'Accueil',
                                                    )
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                          barrierDismissible: true,
                                        );
                                      }
                                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees2()));

                                    },
                                    child: Text(
                                      'Continuer',
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
                    );

              }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length ?? 0,);
              
            },

          ),
        ),


    );
  }
}
