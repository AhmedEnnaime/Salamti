import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey.dart';


class Constipation_advices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Conseils aux patients',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(

          ),

        ),
      ),
      body: SingleChildScrollView(
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
                      'a la constipation',
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
                'Buvez de 6 à 8 verres par jour',
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
                'Augmentez votre consommation d’aliments riches en fibres ',
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
                'Céréales ',
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
                'Activités physiques de façon régulière)',
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
                   if (Mucite_value==true){
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
    );
  }
}
