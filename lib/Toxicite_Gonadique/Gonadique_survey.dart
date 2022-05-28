import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:e_sante/Main_pages/Toxicity.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Data/Toxicity_Data/Gonadique_Data/Gonadique_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Gonadique_Data/Implement_Gonadique.dart';
import 'package:e_sante/Data/Toxicity_Data/Gonadique_Data/Gonadique_controller.dart';

class Gonadique_survey extends StatefulWidget {

  @override
  State<Gonadique_survey> createState() => _Gonadique_surveyState();
}

class _Gonadique_surveyState extends State<Gonadique_survey> {
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
    var gonadiquecontroller = Gonadiquecontroller(Gonadique_Data());
    return Scaffold(
      body:SingleChildScrollView(
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
                      'Toxicité Gonadique',
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
                    padding:  EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text(
                      'Cocher les propositions que vous sentez :',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
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
                          controller: apprition_cures,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Apparition après combien de cures ?",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
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
                                  'assets/irregularite.jpg',
                                  fit: BoxFit.cover,

                                ),
                              ),
                              barrierDismissible: true,
                            );
                          },
                          child: Text(
                            'Irrégularité du cycle',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,

                            ),
                          ),

                        ),
                        value: Irregularite_val,
                        onChanged: (val){
                          setState(() {
                            Irregularite_val=val!;
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
                                    'assets/rythme.jpg',
                                    fit: BoxFit.cover,

                                  ),
                                ),
                                barrierDismissible: true,
                              );
                            },
                            child: Text(
                              'Modification du rythme ou de quantité',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,

                              ),
                            ),

                          ),
                          value: rythme_val,
                          onChanged: (val){
                            setState(() {
                              rythme_val=val!;
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
                              showDialog(
                                context: context,
                                builder: (context)=>AlertDialog(

                                  content: Image.asset(
                                    'assets/interruption.jpg',
                                    fit: BoxFit.cover,

                                  ),
                                ),
                                barrierDismissible: true,
                              );
                            },
                            child: Text(
                              'Interruption totale des règles',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: interruption_val,
                          onChanged: (val){
                            setState(() {
                              interruption_val=val!;
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
                              showDialog(
                                context: context,
                                builder: (context)=>AlertDialog(

                                  content: Image.asset(
                                    'assets/derivation.jpg',
                                    fit: BoxFit.cover,

                                  ),
                                ),
                                barrierDismissible: true,
                              );
                            },
                            child: Text(
                              'Signes de dérivation ostrogénique',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: derivation_val,
                          onChanged: (val){
                            setState(() {
                              derivation_val=val!;
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Toxicity()));

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
                          gonadique_day = DateTime.now();
                          Gonadique gonadique = Gonadique(Apparition_cures: apprition_cures.text,Irregularite: Irregularite_val.toString(),Rythme: rythme_val.toString(),Interruption: interruption_val.toString(),Derivation: derivation_val.toString(),Toxicity_day:'${gonadique_day?.day} ${_getMonthDate(gonadique_day!.month)} ${gonadique_day?.year}',Grade:'Rassurement',Patient_Ip: IP.text);
                          gonadiquecontroller.postGonadique(gonadique);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil()));
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
