import 'package:flutter/material.dart';
import 'package:e_sante/Digestive_survey.dart';
import 'package:e_sante/Nausees_survey2.dart';

class Nausees extends StatefulWidget {

  @override
  State<Nausees> createState() => _NauseesState();
}

class _NauseesState extends State<Nausees> {
  bool val=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Nausees/Vomissements',
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
            Padding(
              padding: EdgeInsets.only(left: 20,top: 30),
              child: Text(
                'Moment d’apparition',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(15, 35, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),
              child: RadioListTile<bool>(
                title: Text(
                  'Avant la cure de la chimiotherapie',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: false,
                groupValue: val,
                onChanged: (value){
                  val=value!;
                  setState(() {

                  });

                },
              ),
            ),
            SizedBox(height: 20,),
            Card(
              margin: EdgeInsets.fromLTRB(15, 25, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),
              child: RadioListTile<bool>(
                title: Text(
                  'Les 24h premières heures ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: false,
                groupValue: val,
                onChanged: (value){
                  val=value!;
                  setState(() {

                  });

                },
              ),
            ),
            SizedBox(height: 20,),
            Card(
              margin: EdgeInsets.fromLTRB(15, 25, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),
              child: RadioListTile<bool>(
                title: Text(
                  'Après les premières 24h sans limite de fin ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: false,
                groupValue: val,
                onChanged: (value){
                  val=value!;
                  setState(() {

                  });

                },
              ),
            ),
            SizedBox(height: 20,),
            Card(
              margin: EdgeInsets.fromLTRB(15, 25, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),
              child: RadioListTile<bool>(
                title: Text(
                  'Persistants malgré un traitement bien mené  ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: false,
                groupValue: val,
                onChanged: (value){
                  val=value!;
                  setState(() {

                  });

                },
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 30,top: 50),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[900],
                        minimumSize: Size(40, 40),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Digestive_survey()));

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
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees2()));

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
            )


          ],
        ),
      ),
    );
  }
}
