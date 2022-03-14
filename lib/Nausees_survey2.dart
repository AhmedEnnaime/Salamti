import 'package:flutter/material.dart';
import 'package:e_sante/Nausees_survey.dart';
import 'package:e_sante/Nausees_survey3.dart';

class Nausees2 extends StatefulWidget {

  @override
  State<Nausees2> createState() => _Nausees2State();
}

class _Nausees2State extends State<Nausees2> {
  String val1='';

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
                'Nombre d’épisodes par 24h',
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
              child: RadioListTile<String>(
                title: Text(
                  'Moins de deux (<2)',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Moins de deux',
                groupValue: val1,
                onChanged: (value){

                  setState(() {
                    val1=value!;
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
              child: RadioListTile<String>(
                title: Text(
                  'Entre deux et cinq  ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Entre deux et cinq',
                groupValue: val1,
                onChanged: (value){

                  setState(() {
                    val1=value!;

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
              child: RadioListTile<String>(
                title: Text(
                  'Plus que six (6<) ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Plus que six',
                groupValue: val1,
                onChanged: (value){

                  setState(() {
                    val1=value!;

                  });

                },
              ),
            ),
            SizedBox(height: 20,),

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees()));

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees3()));

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
