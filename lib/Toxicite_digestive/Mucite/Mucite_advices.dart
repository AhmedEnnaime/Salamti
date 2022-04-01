import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:e_sante/variables.dart';


class Mucite_advices extends StatelessWidget {

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
                          primary: Colors.cyan[900],
                          minimumSize: Size(40, 40),
                          padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10)
                      ),
                      onPressed: () {
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
