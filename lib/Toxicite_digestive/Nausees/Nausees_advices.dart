import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:e_sante/Toxicite_digestive/Constipation/Constipation_survey.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey.dart';

class Nausees_advices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
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
                          primary: Colors.cyan[900],
                          minimumSize: Size(40, 40),
                          padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10)
                      ),
                      onPressed: () {
                        if (Diarrhees_value == true){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees()));

                        }else if (Constipation_value == true){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Constipation()));

                        }else if (Mucite_value==true){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite()));
                        }else {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil()));
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
