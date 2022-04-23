import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_advices.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_survey5.dart';
import 'package:e_sante/variables.dart';
import 'package:http/http.dart' as http;
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_grade4.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_controller.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Nausees_Data/Abstract_class.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Nausees_Data/Implement_Nausees.dart';
import 'package:e_sante/Data/Patient_Data/Patient_data.dart';
import 'package:e_sante/Data/Patient_Data/Patient.dart';
import 'package:e_sante/Data/Patient_Data/User.dart';

class Nausees6 extends StatefulWidget {

  @override
  State<Nausees6> createState() => _Nausees6State();
}

class _Nausees6State extends State<Nausees6> {


  TextEditingController traitement = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    var nauseescontroller= Nauseescontroller(Nausees_Data());
    Patient patient = Patient();
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
                  'Nausees/Vomissements',
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

                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/30,top:HeightScreen/15,right: WidthScreen/30),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: WidthScreen/50),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Est-ce qu’un traitement ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'a été prescrit ? ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),

                            ],
                          ),

                          SizedBox(width: 4.3,),
                          Padding(
                            padding:  EdgeInsets.only(right: WidthScreen/10000,left: WidthScreen/10000),
                            child: Text(
                              'Oui',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Radio<String>(
                            value: 'Oui',
                            groupValue: val5,
                            onChanged: (value){
                              setState(() {
                                val5=value!;
                              });

                            },
                          ),
                          Text(
                            'Non',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Radio<String>(
                            value: 'Non',
                            groupValue: val5,
                            onChanged: (value){
                              setState(() {
                                val5=value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ) ,
                  ),
                  SizedBox(height: 40,),
                  Card(
                        margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
                        clipBehavior: Clip.antiAlias,
                        shape: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,)
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(top: HeightScreen/30,bottom: HeightScreen/30),
                          child: TextFormField(
                            controller: traitement,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Mentionnez le traitement et s'il ya une amelioration apres ce traitement",
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),

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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees5()));

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
                            Nausees nausees = Nausees(Moment_apparition: val,Nbr_ep: val1,Duree_par_jours: val2,Nbr_repas: val3,Traitement: val5,Traitement_desc: traitement.text,Patient_Ip: patient.Ip);
                            if(Troubles_value==true || Moins_urines_value==true || Plus_urines_value==true || Deshydratation_value==true || Poids_value==true || douleurs_value==true || gouts_value==true){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees_grade4()));
                              nauseescontroller.postNausees(nausees);
                            }else if(val3=='Un seule repas' || val1=='Plus que six'){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees_grade4()));
                              nauseescontroller.postNausees(nausees);
                            }else if(val1=='Entre deux et cinq'){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees_grade4()));
                              nauseescontroller.postNausees(nausees);
                            }else
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees_advices()));
                            nauseescontroller.postNausees(nausees);
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
  /*Future Nausees_data() async {
    var APIURL = "http://10.0.2.2:3000/Patients";
    Map mapeddata = {
      "Moment d’apparition" : val,
      "Nombre d’épisodes par 24h": val1,
      "Durée par jours": val2,
      "Nbr de repas par jour": val3,
      //"Signe de gravite": Troubles_value,
      "Est-ce qu’un traitement a été prescrit": val5,
      "Description du traitememnt": traitement.text,
    };
    http.Response reponse = await http.post(APIURL,body: mapeddata);
    var data = jsonDecode(reponse.body);
    print('DATA: ${data}');

  }*/
}
