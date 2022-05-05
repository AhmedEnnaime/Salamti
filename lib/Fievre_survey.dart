import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_advices.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey4.dart';
import 'package:e_sante/Data/Toxicity_Data/Fievre_Data/Fievre_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Fievre_Data/Fievre_controller.dart';
import 'package:e_sante/Data/Toxicity_Data/Fievre_Data/Implement_Fievre.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_grade3.dart';

class Fievre extends StatefulWidget {

  @override
  State<Fievre> createState() => _FievreState();
}

class _FievreState extends State<Fievre> {

  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    var fievrecontroller = Fievrecontroller(Fievre_Data());
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
                  'Fièvre',
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
                      'Délai d’apparition depuis\n la dernière cure ',
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
                    child: Padding(
                      padding:  EdgeInsets.only(left: 40),
                      child: TextFormField(
                        controller: delai,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Délai d’apparition",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: WidthScreen/20,top: HeightScreen/30),
                    child: Text(
                      'Mesure par thermomètre ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/40,top:HeightScreen/25,right: WidthScreen/40),
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
                                'Votre temperature est\n superieure a 38°C ? ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          Text(
                            'Oui',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Radio<String>(
                            value: 'Oui',
                            groupValue: val10,
                            onChanged: (value){
                              setState(() {
                                val10=value!;
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
                            groupValue: val10,
                            onChanged: (value){
                              setState(() {
                                val10=value!;
                              });
                            },
                          ),
                        ],
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees4()));

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
                            Fievre_Model fievre = Fievre_Model(Delai_apparition: delai.text,Mesure:val10,Patient_Ip:IP.text);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees_grade3()));
                            fievrecontroller.postFievre(fievre);

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
}
